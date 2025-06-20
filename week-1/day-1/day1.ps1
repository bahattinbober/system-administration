# 1. Display only the process name and its ID
Get-Process | Select-Object ProcessName, Id
# ➤ Lists all running processes, showing only their names and IDs.

# 2. Sort processes in default ascending order (typically by name)
Get-Process | Sort-Object
# ➤ Sorts all processes alphabetically (by default based on ProcessName).

# 3. Sort processes in descending order
Get-Process | Sort-Object -Descending
# ➤ Reverses the default sorting order (e.g., Z to A for names).

# 4. Show the first 3 processes with their names and IDs
Get-Process | Select-Object -First 3 ProcessName, Id
# ➤ Returns only the first 3 processes in the list, displaying name and ID.

# 5. Filter processes that used more than 20 seconds of CPU time, format output
Get-Process | Where-Object { $_.CPU -gt 20 } | Format-List
# ➤ Shows detailed info for processes where CPU time > 20 seconds.

# 6. List only services that are currently running
Get-Service | Where-Object { $_.Status -eq "Running" }
# ➤ Filters and displays only services with the status “Running”.

# 7. Get help information about Sort-Object
Get-Help Sort-Object
# ➤ Opens PowerShell documentation for the Sort-Object cmdlet.


