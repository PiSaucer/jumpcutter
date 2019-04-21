; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "jumpcutter"
#define MyAppVersion "2.0"
#define MyAppPublisher "PiSaucer"
#define MyAppURL "https://github.com/PiSaucer/jumpcutter"
#define MyAppExeName "jointcutter-2.0.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{0D73ACD6-88EC-48C7-9F83-20B81DC026A1}}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={sd}\PiSaucer\jumpcutter
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile=C:\Users\alans\Documents\jumpcutter-github\exe\jointcutter-2.0\LICENSE
OutputDir=C:\Users\alans\Documents\jumpcutter-github\setup
OutputBaseFilename=setup_jumpcutter
Compression=lzma
SolidCompression=yes
DisableWelcomePage=no


[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "C:\Users\alans\Documents\jumpcutter-github\exe\jointcutter-2.0\jointcutter-2.0.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\alans\Documents\jumpcutter-github\exe\jointcutter-2.0\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[Messages]
WelcomeLabel2=This will install Jumpcutter on your computer.%n%nIt is recommended that you close all other applications and disable any anti virus before continuing.

