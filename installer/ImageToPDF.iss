; Inno Setup Script for Image To PDF Converter
; Builds an installer from the PyInstaller one-folder output

#define MyAppName "Image To PDF Converter"
#define MyAppVersion "1.0.5"
#define MyAppPublisher "OZO Designer"
#define MyAppURL "https://t.me/Ozo0_0"
#define MyAppExeName "ImageToPDFConverter.exe"

; NOTE: This script assumes the app is built by PyInstaller into ..\dist\ImageToPDF\
; Run scripts\build_installer.ps1 to build automatically.

[Setup]
AppId={{B2E2F1C0-3E4A-4B71-97D6-2F8E2F2EAC1B}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppCopyright=Copyright © 2025 OZO Designer
VersionInfoVersion={#MyAppVersion}
DefaultDirName={autopf}\{#MyAppName}
DefaultGroupName={#MyAppName}
DisableDirPage=no
DisableProgramGroupPage=no
OutputDir=output
OutputBaseFilename=ImageToPDFConverter-{#MyAppVersion}-Setup
Compression=lzma
SolidCompression=yes
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64
WizardStyle=modern
SetupIconFile=..\icon.ico
UninstallDisplayIcon={app}\{#MyAppExeName}

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "Create a &desktop shortcut"; GroupDescription: "Additional icons:"; Flags: unchecked

[Files]
; Include everything from the PyInstaller dist folder
Source: "..\dist\ImageToPDFConverter\*"; DestDir: "{app}"; Flags: recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
; Offer to launch after install
Filename: "{app}\{#MyAppExeName}"; Description: "Launch {#MyAppName}"; Flags: nowait postinstall skipifsilent
