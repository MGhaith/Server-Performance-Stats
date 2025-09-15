# Server Performance Stats

A lightweight, powerful Bash script for monitoring and analyzing Linux server performance metrics in real-time.

## Overview

Server Performance Stats is a DevOps utility designed to provide system administrators and developers with quick insights into server health and resource utilization. This tool collects and displays critical performance metrics in a clean, readable format directly in your terminal.

## Features

- **System Information**: Displays OS version details
- **Resource Monitoring**:
  - CPU usage percentage
  - Memory utilization with percentage and free memory
  - Disk usage statistics
- **Process Analysis**:
  - Top 5 CPU-consuming processes
  - Top 5 memory-intensive processes
- **System Status**:
  - Server uptime
  - Currently logged-in users
  - Recent failed login attempts (requires sudo privileges)

## Installation

Clone the repository to your local machine:

```bash
git clone https://github.com/MGhaith/Server-Performance-Stats.git
cd Server-Performance-Stats
```

Make the script executable:

```bash
chmod +x server-stats.sh
```

## Usage

Run the script with:

```bash
./server-stats.sh
```

For failed login attempts monitoring, you may need to run with sudo:

```bash
sudo ./server-stats.sh
```

## Sample Output
```
==================================
      SERVER PERFORMANCE STATS    
==================================

OS VERSION:
PRETTY_NAME="Arch Linux"

*CPU Usage*
CPU Usage: 2.5%

*MEMORY USAGE*
Used: 474 MB (6.09%), Free: 7319 MB

*DISK USAGE*
Used: 1, Free: 955, Use%: 1%

TOP 5 PROCESSES BY CPU:
    PID COMMAND         %CPU
    641 ps               100
    631 server-stats.sh  8.3
      1 systemd          0.0
    111 systemd-udevd    0.0
    102 systemd-resolve  0.0

TOP 5 PROCESSES BY MEMORY:
    PID COMMAND         %MEM
    102 systemd-resolve  0.1
      1 systemd          0.1
     49 systemd-journal  0.1
    248 systemd          0.1
    129 systemd-network  0.1

UPTIME:
up 1 hour, 1 minute

LOGGED IN USERS:
root     pts/1        Sep 15 19:14

FAILED LOGIN ATTEMPTS:

btmp begins Tue Aug 19 13:58:14 2025

==================================
```

## Use Cases

- **Server Monitoring**: Quick health checks during routine maintenance
- **Troubleshooting**: Identify resource bottlenecks during performance issues
- **Capacity Planning**: Track resource utilization trends over time
- **Security Monitoring**: Check for suspicious login attempts

## Customization

You can easily modify the script to:
- Add additional metrics
- Change the number of processes displayed
- Adjust formatting for better readability
- Integrate with monitoring systems

## Requirements

- Linux-based operating system
- Bash shell
- Standard Linux utilities (top, ps, free, df, who, lastb)
- Sudo privileges for viewing failed login attempts

## Roadmap

- Add network traffic monitoring
- Implement historical data collection
- Create visualization options
- Add email alerting capabilities
- Support for containerized environments

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/MGhaith/Server-Performance-Stats/blob/main/LICENSE) file for details.

---

*Note: This tool is designed for Linux servers and may not work on other operating systems.*