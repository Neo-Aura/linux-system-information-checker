# Linux System Information Checker

## About
A Bash scripting project built on Ubuntu Linux running on an AWS EC2 instance. It collects basic system information and saves reports to a log file.

## Features
- Displays the hostname and current user
- Shows the current date and time
- Reports system uptime
- Displays memory and root disk usage
- Shows the instance's private IP address
- Checks for required commands
- Saves output to a timestamped log report

## Technologies
- Ubuntu Linux
- AWS EC2
- Bash scripting
- Linux command-line utilities
- Git and GitHub

## How to Run

Clone or download this repository, then navigate to the project directory.

Make the script executable:

```bash
chmod +x system-info.sh
```

Run the script:

```bash
./system-info.sh
```

View the saved log:

```bash
cat ~/linux-system-info/system-info.log
```

## What I Learned
- Writing and executing Bash scripts
- Checking command availability
- Collecting Linux system metrics
- Redirecting output to a log file
- Practicing Linux administration on AWS EC2

## Project Status
Learning project — features and documentation may be improved as I continue practicing Linux and Cloud/DevOps.
