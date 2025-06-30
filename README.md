 📊 Disk Space Monitor & 🗂️ Large File Archiver

This project consists of two powerful Bash scripts designed to simplify system maintenance:

- **🧠 Monitor Free Disk Space** – Manually check system disk usage and get alert emails if free space drops below a threshold.
- **📦 Archive Large Files** – Automatically find and compress large files using `gzip`, scheduled via `cron`.


✨ Features

🧠 Disk Space Monitoring
- Threshold-based disk usage check.
- Sends alert emails (e.g., when usage > 80%).
- Helps prevent unexpected system crashes.
- Lightweight and easy to integrate into admin workflows.

📦 Large File Archiving
- Scans a target directory for files larger than a specified size (e.g., 20MB).
- Compresses each using `gzip` and moves them to an archive directory.
- Fully automated with `cron`.


## ⚙️ Configuration

Inside the respective scripts, customize the following variables:

### `disk_monitor.sh`
```bash
THRESHOLD=80                     # Usage threshold (in %)
EMAIL_TO="admin@example.com"     # Email to notify
