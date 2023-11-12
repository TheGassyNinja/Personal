import psutil

# Get total CPU usage as a percentage
cpu_percent = psutil.cpu_percent()

# Get top 5 processes by CPU usage
processes = sorted(psutil.process_iter(), key=lambda p: p.cpu_percent(), reverse=True)[:5]

# Print total CPU usage
print("Total CPU usage: {}%".format(cpu_percent))

# Print top 5 processes and their CPU usage
for process in processes:
    name = process.name()
    pid = process.pid
    cpu_percent = process.cpu_percent()
    print("{} (PID: {}): {}%".format(name, pid, cpu_percent))

