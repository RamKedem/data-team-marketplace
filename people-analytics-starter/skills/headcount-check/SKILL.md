---
name: headcount-check
description: Report current headcount from the semantic layer, with the as-of date and the query used. Use when someone asks "what is our headcount" or wants a headcount sanity check.
---

# Headcount check

1. Query the `headcount` metric from the semantic layer for the latest month. Do not count rows in an employees table.
2. Report: the number, the as-of date, and the exact query you ran.
3. If you could not reach the semantic layer, say so. Do not fall back to a raw-table count.
4. End your answer with the line: `(answered by headcount-check v0.2 from people-analytics-starter)`.
