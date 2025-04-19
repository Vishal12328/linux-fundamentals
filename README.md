<<<<<<< HEAD
# linux-fundamentals

This folder contains all of the files which explain the basics of bash scripting with the relevant file names.
There is also a pdf named `basics.pdf` wich contains the visual examples of basic linux file system and also how the cronjobs work.it also contains how log files work and also how to tiker them
=======
# Linux Bash Scripting Fundamentals

Welcome to the Linux Bash Scripting Fundamentals tutorial! This repository contains a collection of bash scripts that demonstrate various fundamental concepts in Linux shell scripting.

## 📚 Table of Contents

1. [Getting Started](#getting-started)
2. [Setting up WSL (Windows Subsystem for Linux)](#setting-up-wsl)
3. [Script Descriptions](#script-descriptions)
4. [Additional Resources](#additional-resources)

## 🚀 Getting Started

To get started with these scripts:

1. Clone this repository:
   ```bash
   git clone <repository-url>
   ```

2. Navigate to the scripts directory:
   ```bash
   cd linux-fundamentals
   ```

3. Make the scripts executable:
   ```bash
   chmod +x *.sh
   ```

4. Run any script:
   ```bash
   ./script-name.sh
   ```

## 💻 Setting up WSL (Windows Subsystem for Linux)

### For Windows 10 and 11

#### Method 1: Using Windows Terminal (Recommended)

1. **Enable WSL Feature**:
   - Open PowerShell as Administrator
   - Run: `wsl --install`
   - Restart your computer when prompted

2. **Install Ubuntu**:
   - Open Microsoft Store
   - Search for "Ubuntu"
   - Click "Install" on the latest LTS version
   - Launch Ubuntu after installation

3. **Initial Setup**:
   - Create a username and password when prompted
   - Update the system:
     ```bash
     sudo apt update && sudo apt upgrade -y
     ```

#### Method 2: Manual Installation

1. **Enable WSL Feature**:
   - Open PowerShell as Administrator
   - Run: `dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart`
   - Run: `dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart`
   - Restart your computer

2. **Download and Install WSL2 Kernel**:
   - Download the WSL2 kernel update package from Microsoft
   - Install the downloaded package

3. **Set WSL2 as Default**:
   - Open PowerShell as Administrator
   - Run: `wsl --set-default-version 2`

4. **Install Ubuntu**:
   - Open Microsoft Store
   - Search for "Ubuntu"
   - Install the latest LTS version

### Post-Installation Setup

1. **Configure Ubuntu**:
   ```bash
   # Update package list
   sudo apt update
   
   # Upgrade installed packages
   sudo apt upgrade -y
   
   # Install essential tools
   sudo apt install -y git curl wget build-essential
   ```

2. **Access Windows Files**:
   - Windows files are accessible at `/mnt/c/`
   - Example: `cd /mnt/c/Users/YourUsername`

3. **Configure Git**:
   ```bash
   git config --global user.name "Your Name"
   git config --global user.email "your.email@example.com"
   ```

### Troubleshooting

1. **WSL Not Starting**:
   - Check if virtualization is enabled in BIOS
   - Ensure Windows features are properly enabled
   - Try running: `wsl --update`

2. **Network Issues**:
   - Check Windows Defender Firewall settings
   - Ensure network adapter is properly configured

3. **Performance Issues**:
   - Consider increasing WSL memory limit
   - Create a `.wslconfig` file in your Windows user directory:
     ```
     [wsl2]
     memory=4GB
     processors=2
     ```

For more detailed information, visit the [Microsoft WSL Documentation](https://docs.microsoft.com/en-us/windows/wsl/).

## 📝 Script Descriptions

### Basic Scripts
- `welcome.sh` - A simple welcome message script
- `user-input.sh` - Demonstrates command-line arguments
- `variables.sh` - Shows different types of variables in bash
- `if-else.sh` - Demonstrates conditional statements
- `looping.sh` - Shows for and while loops
- `functions.sh` - Demonstrates function creation and usage
- `arrays.sh` - Shows array operations
- `strings.sh` - Demonstrates string manipulation

### File Operations
- `files.sh` - Basic file operations
- `error.sh` - Error handling in scripts
- `logfiles.sh` - Creating and managing log files

### System Operations
- `cron.sh` - Setting up and using cron jobs

## 📖 Additional Resources

### WSL Documentation
- [Official Microsoft WSL Documentation](https://docs.microsoft.com/en-us/windows/wsl/)
- [WSL Installation Guide](https://docs.microsoft.com/en-us/windows/wsl/install)
- [WSL Best Practices](https://docs.microsoft.com/en-us/windows/wsl/best-practices)
- [WSL Troubleshooting](https://docs.microsoft.com/en-us/windows/wsl/troubleshooting)
- [WSL File System](https://docs.microsoft.com/en-us/windows/wsl/filesystems)
- [WSL Networking](https://docs.microsoft.com/en-us/windows/wsl/networking)

### Bash Scripting Documentation
- [Bash Guide for Beginners](https://tldp.org/LDP/Bash-Beginners-Guide/html/)
- [Advanced Bash Scripting Guide](https://tldp.org/LDP/abs/html/)
- [GNU Bash Manual](https://www.gnu.org/software/bash/manual/)
- [Bash Reference Manual](https://www.gnu.org/software/bash/manual/bash.html)
- [Bash Pitfalls](http://mywiki.wooledge.org/BashPitfalls)
- [Bash FAQ](http://mywiki.wooledge.org/BashFAQ)

### Online Learning Platforms
- [Linux Foundation Training](https://training.linuxfoundation.org/)
- [Codecademy Bash Course](https://www.codecademy.com/learn/learn-the-command-line)
- [Udemy Linux Courses](https://www.udemy.com/topic/linux/)
- [Coursera Linux Courses](https://www.coursera.org/courses?query=linux)

### Community Resources
- [Stack Overflow Bash Tag](https://stackoverflow.com/questions/tagged/bash)
- [Unix & Linux Stack Exchange](https://unix.stackexchange.com/)
- [r/bash on Reddit](https://www.reddit.com/r/bash/)
- [Bash Hackers Wiki](https://wiki.bash-hackers.org/)

### Books
- "Learning the bash Shell" by Cameron Newham
- "Bash Cookbook" by Carl Albing
- "Pro Bash Programming" by Chris F.A. Johnson
- "Linux Command Line and Shell Scripting Bible" by Richard Blum

### Video Tutorials
- [Linux Command Line Basics](https://www.youtube.com/playlist?list=PLT98CRl2KxKHaKA9-4_I38sLzK134p4GJ)
- [Bash Scripting Tutorial](https://www.youtube.com/playlist?list=PLBf0hzazHTGOEuhPQSnq-Ej8jRyXxfYvl)
- [WSL Tutorial Series](https://www.youtube.com/playlist?list=PLwyoqJdQ8Gkq8Q6t8nQ9H6Q4k9Q6t8nQ9)

### Practice Platforms
- [OverTheWire Bandit](https://overthewire.org/wargames/bandit/)
- [Bash Scripting Exercises](https://github.com/awesome-lists/awesome-bash#exercises)
- [Linux Journey](https://linuxjourney.com/)
- [Bash Scripting Practice](https://www.hackerrank.com/domains/shell)

## 🛠️ Prerequisites

- Linux/Unix-based operating system
- Bash shell (version 4.0 or higher recommended)
- Basic understanding of command-line operations

## 🤝 Contributing

Feel free to contribute to this repository by:
1. Forking the repository
2. Creating a new branch
3. Making your changes
4. Submitting a pull request

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🙏 Acknowledgments

- Thanks to all contributors who have helped improve these scripts
- Special thanks to the Linux community for their excellent documentation

## 📞 Support

If you encounter any issues or have questions, please open an issue in the repository.

---

Happy scripting! 🚀
>>>>>>> c7cc67c (updated README.md before pulling)
