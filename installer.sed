[Version]
Class=IEXPRESS
SEDVersion=3
[Options]
PackagePurpose=InstallApp
ShowInstallProgramWindow=1
HideExtractAnimation=1
AppLaunched=powershell.exe -ExecutionPolicy Bypass -File setup.ps1
PostInstallCmd=<None>
AdminQuietInstCmd=powershell.exe -ExecutionPolicy Bypass -File setup.ps1
UserQuietInstCmd=powershell.exe -ExecutionPolicy Bypass -File setup.ps1
SourceFiles=SourceFiles
[Strings]
InstallPrompt=
DisplayLicense=
FinishMessage=Fanapdesk successfully installed.
TargetName=C:\Fanapdesk_Build\Fanapdesk-Setup.exe
FriendlyName=Fanapdesk Setup
AppLaunched=powershell.exe -ExecutionPolicy Bypass -File setup.ps1
PostInstallCmd=<None>
[SourceFiles]
SourceFiles0=C:\Fanapdesk_Build
[SourceFiles0]
%FILE0%=
%FILE1%=
%FILE2%=
[SourceFiles0]
rustdesk-core.exe=
fanap.ico=
setup.ps1=
