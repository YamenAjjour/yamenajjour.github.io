require "json"
require "net/http"
require "uri"

# Fetches metadata (description, language, stars, forks) for every repository
# listed under `github_repos` in _data/repositories.yml and exposes it as
# `site.data.github_repo_meta["owner/repo"]` for _includes/repository/repo.liquid.
#
# Set GITHUB_TOKEN in the environment to avoid the 60 requests/hour
# unauthenticated rate limit. If a request fails, the card still renders
# with just the repository name and link.
module Jekyll
  class GithubRepoMetadata < Generator
    safe true
    priority :highest

    CACHE = {}

    def generate(site)
      repos = site.data.dig("repositories", "github_repos") || []
      site.data["github_repo_meta"] = repos.each_with_object({}) do |repo, meta|
        CACHE[repo] ||= fetch(repo)
        meta[repo] = CACHE[repo]
      end
    end

    private

    def fetch(repo)
      uri = URI("https://api.github.com/repos/#{repo}")
      request = Net::HTTP::Get.new(uri)
      request["Accept"] = "application/vnd.github+json"
      request["User-Agent"] = "jekyll-repo-cards"
      token = ENV["GITHUB_TOKEN"]
      request["Authorization"] = "Bearer #{token}" if token && !token.empty?

      response = Net::HTTP.start(uri.host, uri.port, use_ssl: true, open_timeout: 10, read_timeout: 10) do |http|
        http.request(request)
      end

      unless response.is_a?(Net::HTTPSuccess)
        Jekyll.logger.warn "GithubRepoMetadata:", "#{repo}: HTTP #{response.code}"
        return {}
      end

      data = JSON.parse(response.body)
      {
        "description" => data["description"],
        "language" => data["language"],
        "stars" => data["stargazers_count"],
        "forks" => data["forks_count"],
      }
    rescue StandardError => e
      Jekyll.logger.warn "GithubRepoMetadata:", "#{repo}: #{e.message}"
      {}
    end
  end
end
