# 📅 Week 1 - Day 2

## 🔧 Topics Covered

- PowerShell file and directory operations
- File automation with loops
- Cleanup of temporary files using scripting

## 📜 Commands Practiced

```powershell
# Create a backup folder
New-Item -Path "C:\Users\bahob\dosya gezgini\backup" -ItemType Directory -Force

# Copy important files to the backup folder
Copy-Item -Path "C:\Users\bahob\dosya gezgini\ımportant" -Destination "C:\Users\bahob\dosya gezgini\backup" -Recurse -Force

# Create report folders
New-Item -Path "C:\Users\bahob\Desktop\Reports" -ItemType Directory -Force
New-Item -Path "C:\Users\bahob\Desktop\Reports\Daily" -ItemType Directory -Force
New-Item -Path "C:\Users\bahob\Desktop\Reports\Archive" -ItemType Directory -Force

# Generate 5 empty report files
1..5 | ForEach-Object {
    New-Item -Path "C:\Users\bahob\Desktop\Reports\Daily\report$_.txt" -ItemType File -Force
}

# Delete temporary .tmp files from a specific folder
$folder = "C:\Users\bahob\Desktop\Temp"
Get-ChildItem -Path $folder -Filter *.tmp | ForEach-Object {
    Remove-Item $_.FullName -Force
}

🧠 What I Learned
How to create and manage directories and files using PowerShell

How to automate file creation with loops (1..5 | ForEach-Object)

How to copy files and ensure overwrites with -Recurse and -Force

How to clean up temporary files using filters and Remove-Item

💡 Reflections
Today I practiced automating routine file operations — a common task in system administration. Automating backups, report generation, and cleanup helps maintain system hygiene and prepares me for larger scripting challenges in the future.