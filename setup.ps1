$TargetDir = "C:\Program Files\Fanapdesk"
New-Item -ItemType Directory -Path $TargetDir -Force | Out-Null
Copy-Item -Path ".\rustdesk-core.exe" -Destination "$TargetDir\Fanapdesk.exe" -Force
Copy-Item -Path ".\fanap.ico" -Destination "$TargetDir\fanap.ico" -Force

# Silent Install RustDesk service
Start-Process -FilePath "$TargetDir\Fanapdesk.exe" -ArgumentList "--install-service" -Wait -WindowStyle Hidden

# Inject Network & Key Configuration directly
Start-Process -FilePath "$TargetDir\Fanapdesk.exe" -ArgumentList '--config host=46.32.15.27,key=GAPGPTMASKTOKENc7bx9dnhvnjX1X' -Wait -WindowStyle Hidden

# Create Desktop Shortcut with Fanap Icon & Name
$WshShell = New-Object -ComObject WScript.Shell
$DesktopPath = [System.Environment]::GetFolderPath('Desktop')
$Shortcut = $WshShell.CreateShortcut("$DesktopPath\Fanapdesk.lnk")
$Shortcut.TargetPath = "$TargetDir\Fanapdesk.exe"
$Shortcut.IconLocation = "$TargetDir\fanap.ico"
$Shortcut.Description = "Fanap Remote Desktop Service"
$Shortcut.Save()

# Create Start Menu Shortcut
$StartMenu = [System.Environment]::GetFolderPath('CommonStartMenu') + "\Programs"
$Shortcut2 = $WshShell.CreateShortcut("$StartMenu\Fanapdesk.lnk")
$Shortcut2.TargetPath = "$TargetDir\Fanapdesk.exe"
$Shortcut2.IconLocation = "$TargetDir\fanap.ico"
$Shortcut2.Save()

Write-Host "Fanapdesk installation completed successfully!" -ForegroundColor Green
