# Linux Command Cheat Tool (Bash Script)

A lightweight Bash-based cheat tool that gives short explanations for Linux commands. Designed for beginners who want a quick refresher without opening man pages.

- Ideal for learning common commands quickly
- Uses a simple text-file lookup so it's easy to extend
- Demonstrates core Bash concepts (case, read, grep, cut, if/else)

---

## Features

- Lookup brief descriptions for hundreds of Linux commands
- Fast, terminal-based interaction
- External `commands.txt` file for easy expansion
- Example-friendly and easy to modify

---

## Project Structure

Linux-Command-Cheat-Tool/
│
├── script.sh        # Main Bash script (interactive CLI)
├── commands.txt     # Command list (format: command:description)
└── README.md        # Project documentation

---

## Prerequisites

- Bash shell (Linux, macOS, or WSL on Windows)
- Basic terminal familiarity

---

## Installation

1. Clone the repository:
   git clone https://github.com/jenna2004jna/Linux-Command-Cheat-Tool-Bash-Script-.git
   cd Linux-Command-Cheat-Tool

2. Make the script executable:
   chmod +x script.sh

---

## Usage

Run the script and enter a command name when prompted:

./script.sh

Example session:
```
Enter Linux command:
df
Shows disk usage

Enter Linux command:
grep
Searches text patterns

Enter Linux command:
abc
Command not found in cheat tool
```

---

## commands.txt Format

Each line contains a command and its short description separated by a colon.

Example:
```
df:Shows disk usage
ls:Lists directory contents
grep:Searches text patterns
```

- Keep one command per line.
- Use the exact command name before the colon.
- Descriptions should be brief (one line).

---

## How it works (implementation notes)

- script.sh first checks a few common commands via a `case` statement (fast path).
- If not matched, it searches `commands.txt` using `grep` for an exact match and `cut` to extract the description.
- If found → prints the explanation. If not → prints a friendly "not found" message.
- The design keeps the script small while allowing scale through the external file.

---

## Tips & Suggestions

- Make searches case-insensitive by normalizing input (e.g., `tr '[:upper:]' '[:lower:]'`).
- Add support for command options (e.g., `ls -l`) by splitting input and matching only the base command.
- Add automatic updates to `commands.txt` from a curated list to grow the database.

---

## Future Enhancements (ideas)

- Case-insensitive lookup
- Option-aware explanations (e.g., `ls -l`)
- Menu-based or fuzzy search with suggestions
- Integrate short snippets from `man` pages or `tldr`
- Add unit tests for script behavior
- Add an installation script or package it as a small CLI tool

---
## Author

Jenna  
 ECE | Embedded Systems | Linux & Automation Enthusiast

---
