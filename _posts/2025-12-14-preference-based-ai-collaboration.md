---
layout: post
title:  "Position Paper: Problem Solving Through Human-AI Preference-based Cooperation"
permalink: /preference-based cooperation/
date:   2025-12-14 11:12:00 +0100
categories: Agentic AI
---

This [paper](https://direct.mit.edu/coli/article-pdf/doi/10.1162/coli.a.19/2539252/coli.a.19.pdf) addresses a fundamental problem with today's Artificial Intelligence: current AI tools are poor teammates.

When we ask an AI (like one that writes software or designs a product) to make changes, it struggles to understand and act on our requests, especially when those requests involve big-picture ideas or complex, step-by-step refinements.

The Solution: A New Framework for Collaborative AI

The researchers propose a new approach to build AI agents that don't just follow simple instructions, but can genuinely partner with humans to create complex solutions, such as new software programs.

The core idea is to treat the process of creation like a shared exploration guided by human feedback (language-based requests or confirmations). The framework is built on several key design choices:
Key Design Choices:
1. **Shared Exploration** (The "Search"): Instead of just giving one answer, the AI should explore a whole range of potential solutions. Human feedback (given in natural language) acts like a compass, helping the AI navigate this space of possibilities toward the best outcome.
   - Representation: Solutions (like a piece of software) must be understood and talked about at different levels, from the high-level Goals (requirements) to the blueprint (architecture), the design (how parts fit together), and the actual Code (implementation).
   - Quality Check (Utility): The system needs a way to measure the "goodness" of any solution using multiple metrics. For example, is the new computer program fast, or does it use too much memory?
   - Action Steps (Operators): The AI needs a library of actions it can use to modify an existing solution to make it better.

2. **Pre-defined Collaboration (Communication Protocol)**: A defined set of conversational acts is needed to clarify the interaction between the human and the AI. This includes clear ways for the human to Critique a solution, offer Confirmation, or request a specific Modification.
Major Unanswered Questions for Research
The framework opens up challenging questions for future research:
   - *Learning from Fixes (Edits-based learning)*: Instead of saving every piece of conversational context, how can the AI learn general rules by comparing the quality of the solution before a human edit to the quality after the edit?
   - *Safety in Shared Creation*: Since the AI is involved in shaping the final objective, how do we ensure the AI cannot subtly manipulate the goals in a way that is harmful or unsafe?
   - *Evaluating Teamwork*: How do we accurately measure and evaluate the quality and effectiveness of the human-AI collaboration process itself, rather than just the final product?

 