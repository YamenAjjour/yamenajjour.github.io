---
layout: page
title: ArgBench
description: A benchmark of 46 computational argumentation tasks for evaluating LLMs.
img: assets/img/projects/argbench.png
importance: 1
github: https://github.com/webis-de/argbench
---

ArgBench is a benchmark for evaluating large language models on computational argumentation.
It unifies 33 datasets into 46 tasks that cover five skills: mining arguments, assessing their
perspective, assessing their quality, reasoning about them, and generating them.
Every task is phrased as a prompt with a fixed evaluation measure, so models can be compared
across the whole field rather than on single tasks.

<div class="mt-3 mb-4">
  <a class="btn btn-sm z-depth-0" role="button" href="{{ '/argbench/' | relative_url }}">Leaderboard</a>
  <a class="btn btn-sm z-depth-0" role="button" href="https://aclanthology.org/2026.findings-acl.1099/">Paper</a>
  <a class="btn btn-sm z-depth-0" role="button" href="https://github.com/webis-de/argbench-data">Data</a>
  <a class="btn btn-sm z-depth-0" role="button" href="https://github.com/webis-de/argbench">Code</a>
</div>

#### Skills and tasks

| Skill | Tasks | Examples |
| :-- | :-: | :-- |
| Argument mining | 16 | unit segmentation, unit classification, relation identification |
| Perspective assessment | 6 | stance classification, frame identification, key point matching |
| Quality assessment | 9 | argument ranking, argument rating, suboptimal claim detection |
| Argument reasoning | 5 | fallacy detection, scheme classification, warrant identification |
| Argument generation | 10 | counterargument generation, claim optimization, warrant generation |

Classification tasks are scored with macro F1, segmentation tasks with exact-match span F1, and
generation tasks with BERTScore. A model's score for a skill is the average over the skill's tasks,
and its overall score is the average over the five skills.

#### Citation

{% raw %}
```bibtex
@inproceedings{ajjour-etal-2026-argbench,
  title     = {{ArgBench}: Benchmarking {LLMs} on Computational Argumentation Tasks},
  author    = {Ajjour, Yamen and Quensel, Carlotta and Lipka, Nedim and Wachsmuth, Henning},
  booktitle = {Findings of the Association for Computational Linguistics: ACL 2026},
  year      = {2026},
  pages     = {21846--21874},
  url       = {https://aclanthology.org/2026.findings-acl.1099/}
}
```
{% endraw %}
