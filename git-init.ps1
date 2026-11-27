$git = "C:\Program Files\Git\cmd\git.exe"
Set-Location "C:\Users\bdstd\.gemini\antigravity\scratch\edukids-privat"

& $git init
& $git config user.name "Edukids Owner"
& $git config user.email "owner@edukids.id"
& $git add .
& $git commit -m "Initial commit: Edukids Privat Web App persis screenshot lengkap"
& $git branch -M main
& $git log --oneline -n 1
