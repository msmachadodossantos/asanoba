---
title: Traceability Policies and Matrices
sidebar:
    order: 3
---

This document defines the project's traceability rules and houses the hyperlink to the matrices that link strategy to code.

Traceability ensures that the original idea (Vision) correctly translates into technical rules (SRS) and, ultimately, into executable code and tests within <a href="https://github.com/msmachadodossantos/asanoba/projects" target="_blank">GitHub Projects</a>.


## Traceability Policy (The Rules)

To keep the project organized and prevent features from losing direction or purpose, the following rules apply:

* **Unique Identifiers (IDs):** Every element must have a unique identifier code (e.g., `VISION-01` for objectives, `SRS-01` for technical requirements, and GitHub *Issues*).
* **Mandatory Flow:** No code is developed without being associated with an SRS requirement; and no SRS requirement exists without being linked to a high-level Vision objective.
* **Continuous Updates:** Day-to-day management and progress mapping are executed and monitored directly through <a href="https://github.com/msmachadodossantos/asanoba/projects" target="_blank">GitHub Projects</a>.


## Types of Traceability Matrices

To ensure the connection between the various project phases is maintained without creating overly complex or hard-to-read tables, we use the following types of matrices:

* **Business Requirements Matrix (Vision to SRS):**
    * *What it does:* Maps high-level objectives from the Vision document to detailed technical requirements in the SRS.
    * *Purpose:* Ensures that all strategic needs and end-user demands translate into concrete technical rules, avoiding the development of unnecessary features.


* **Implementation and Execution Matrix (SRS to GitHub / Code):**
    * *What it does:* Links technical SRS requirements to practical tasks and actual code components.
    * *Purpose:* Through integration with <a href="https://github.com/msmachadodossantos/asanoba/projects" target="_blank">GitHub Projects</a>, this matrix maps each requirement (`SRS-01`) directly to its corresponding *Issue* and the code *Pull Requests* created by developers, allowing progress to be audited in real-time.


* **Validation and Testing Matrix (Requirement to Test):**
    * *What it does:* Relates each technical requirement to its respective test cases.
    * *Purpose:* Ensures that everything specified and programmed is properly tested before being considered complete.