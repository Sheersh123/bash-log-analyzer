# 📊 Log Analyzer & Error Report Generator

## 🔍 Overview
A Bash-based automation tool that parses system/application logs to detect errors, warnings, and critical events.  
It generates structured reports and supports scheduling via `cron`, reducing manual log analysis efforts in IT operations.

---

## 🚀 Problem it Solves
- Large log files are difficult to scan manually.  
- Critical issues may be missed, causing downtime.  
- Businesses need **automated, repeatable monitoring**.  

✔ Automates error detection  
✔ Provides clear, timestamped reports  
✔ Easy to integrate into existing workflows  

---

## 🛠 Tools Used
- **Bash Scripting**  
- **Linux Utilities**: `grep`, `awk`, `sed`, `cut`, `sort`, `uniq`, `gzip`  
- **Cron Jobs** → automation & scheduling  
- **Git/GitHub** → version control & portfolio showcase  

---

## 📅 Agile Approach
The project is developed using **Agile methodology** with 4 sprints (12 days total).  
Each sprint delivers incremental functionality, ensuring continuous progress and usable features.

### 🗂 Sprint Breakdown

| Sprint | Duration | Goals | Deliverables |
|--------|----------|-------|--------------|
| **Sprint 1: Core Setup** | Days 1–3 | • Repository setup & docs <br> • Script skeleton <br> • Basic error filtering (`ERROR`, `WARNING`, `CRITICAL`) <br> • Error counts | ✅ Repo initialized <br> ✅ `log_analyzer.sh` skeleton <br> ✅ Basic filtering working |
| **Sprint 2: Categorization** | Days 4–6 | • Extract timestamps <br> • Group by process/service <br> • Date/time filters <br> • CLI flags/options | ✅ Categorized logs <br> ✅ CLI usability improved |
| **Sprint 3: Reporting** | Days 7–9 | • Generate structured reports (`.txt` / `.csv`) <br> • Timestamped filenames <br> • Top recurring errors <br> • Color-coded console output <br> • Report compression | ✅ Reports with insights <br> ✅ Compressed archives |
| **Sprint 4: Automation & Polish** | Days 10–12 | • Automate daily execution with `cron` <br> • Log rotation <br> • Error handling <br> • Optional email reports <br> • Final documentation & screenshots | ✅ Automated daily runs <br> ✅ Polished docs <br> ✅ Portfolio-ready project |

---

## 📆 Timeline

| Day | Task | Sprint |
|-----|------|--------|
| 1–3 | Core script & error counts | Sprint 1 |
| 4–6 | Timestamps, filters, CLI options | Sprint 2 |
| 7–9 | Reports, summaries, compression | Sprint 3 |
| 10–12 | Automation, polish, final docs | Sprint 4 |

---

## ✅ Final Deliverables
- `log_analyzer.sh` – Core script  
- Reports (`.txt` / `.csv`)  
- Automated daily runs via `cron`  
- Documentation (README + examples)  

---

## 🔮 Future Enhancements
- Integration with **Splunk/ELK/Grafana** for dashboards  
- Alerting via **Slack/Email APIs**  
- Support for **JSON/structured logs**  
