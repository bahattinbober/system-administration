📅 Week 1 - Day 1

🔧 Topics Covered

   PowerShell basics

   Process and service management

   Sorting, filtering, and help commands


📜 Commands Practiced

Get-Process | Select-Object ProcessName, Id
Get-Process | Sort-Object
Get-Process | Sort-Object -Descending
Get-Process | Select-Object -First 3 ProcessName, Id
Get-Process | Where-Object { $_.CPU -gt 20 } | Format-List
Get-Service | Where-Object { $_.Status -eq "Running" }
Get-Help Sort-Object



🧠 What I Learned

How to list and sort running processes in PowerShell

How to use Select-Object to customize output

How to filter data using Where-Object

How to display detailed info with Format-List

How to check currently running services

How to use PowerShell’s built-in documentation with Get-Help


💡 Reflections
This was my first day exploring PowerShell as a system administration tool. I understood the basics of listing and filtering system data, which will be crucial in monitoring and automation tasks later on.

I also learned how to chain commands using pipes (|) to refine and format output. This will be very helpful when writing scripts that need to analyze or export system data.
