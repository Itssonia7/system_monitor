# Automated System Health Monitor 🖥️📊

A lightweight, shell-automated monitoring agent designed to poll core hardware metrics (disk utility and memory availability), process telemetry fields, and maintain a persistent, time-stamped status ledger.

## 🚀 Features
* **Storage Auditing:** Chains `df` and text-parsing pipelines to monitor root-partition drive boundaries.
* **Memory Telemetry:** Polls volatile hardware tables (`free -m`) to safeguard application memory allocations.
* **Data Processing:** Uses `awk` field-token isolation and `tr` character deletion to sanitize raw hardware string data into matchable integers.
* **Continuous Auditing:** Records structured health profiles into an append-only transaction file protected by local `.gitignore` rule layers.

## 🛠️ System Stack & Architecture
* **Script Engine:** Bash Shell Interpreter
* **Unix Pipelines:** `df`, `free`, `awk`, `tr`, `date`
* **Logical Bounds:** Greater-than-or-equal (`-ge`), Less-than (`-lt`) operational flags