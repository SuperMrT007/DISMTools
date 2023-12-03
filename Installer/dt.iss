; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "DISMTools"
#define MyAppVersion "0.4"
#define MyAppPublisher "CodingWonders Software"
#define MyAppURL "https://github.com/CodingWonders/DISMTools"
#define MyAppExeName "DISMTools.exe"
#define MyAppAssocName MyAppName + " project"
#define MyAppAssocExt ".dtproj"
#define MyAppAssocKey StringChange(MyAppAssocName, " ", "") + MyAppAssocExt

#define pfDir "{commonpf}\DISMTools\Preview"

#define scName "DISMTools Preview"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{AB033696-A4AC-4DF2-B802-9D8BB8B0EEB5}}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={#pfDir}
DisableDirPage=yes
ChangesAssociations=yes
DisableProgramGroupPage=yes
LicenseFile=.\files\LICENSE
; Uncomment the following line to run in non administrative install mode (install for current user only.)
PrivilegesRequired=admin
OutputBaseFilename=dt_setup
Compression=lzma
SolidCompression=yes
WizardStyle=modern
DisableWelcomePage=no
ArchitecturesInstallIn64BitMode=x64
CloseApplications=yes
WizardImageFile=mainImg.bmp
WizardSmallImageFile=logo.bmp
SetupIconFile=dt_inst.ico
UninstallFilesDir={#pfDir}

; Setup version info
VersionInfoProductVersion={#MyAppVersion}
VersionInfoProductTextVersion={#MyAppVersion}
VersionInfoVersion={#MyAppVersion}
VersionInfoTextVersion={#MyAppVersion}

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"
Name: "es"; MessagesFile: "compiler:Spanish.isl"
Name: "fr"; MessagesFile: "compiler:French.isl"
Name: "de"; MessagesFile: "compiler:German.isl"
Name: "it"; MessagesFile: "compiler:Italian.isl"
Name: "pt"; MessagesFile: "compiler:Portuguese.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: ".\files\{#MyAppExeName}"; DestDir: "{#pfDir}"; Flags: ignoreversion
Source: ".\files\DarkUI.dll"; DestDir: "{#pfDir}"; Flags: ignoreversion
Source: ".\files\LICENSE"; DestDir: "{#pfDir}"; Flags: ignoreversion
Source: ".\files\Microsoft.Dism.dll"; DestDir: "{#pfDir}"; Flags: ignoreversion
Source: ".\files\ScintillaNET.dll"; DestDir: "{#pfDir}"; Flags: ignoreversion
Source: ".\files\System.dll"; DestDir: "{#pfDir}"; Flags: ignoreversion
Source: ".\files\System.Drawing.dll"; DestDir: "{#pfDir}"; Flags: ignoreversion
Source: ".\files\System.Management.dll"; DestDir: "{#pfDir}"; Flags: ignoreversion
Source: ".\files\System.ServiceModel.dll"; DestDir: "{#pfDir}"; Flags: ignoreversion
Source: ".\files\System.Windows.Forms.dll"; DestDir: "{#pfDir}"; Flags: ignoreversion
Source: ".\files\System.Xml.dll"; DestDir: "{#pfDir}"; Flags: ignoreversion
Source: ".\files\System.Xml.Linq.dll"; DestDir: "{#pfDir}"; Flags: ignoreversion
Source: ".\files\WeifenLuo.WinFormsUI.Docking.dll"; DestDir: "{#pfDir}"; Flags: ignoreversion
Source: ".\files\WeifenLuo.WinFormsUI.Docking.ThemeVS2012.dll"; DestDir: "{#pfDir}"; Flags: ignoreversion
Source: ".\files\bin\*"; DestDir: "{#pfDir}\bin"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Registry]
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocExt}\OpenWithProgids"; ValueType: string; ValueName: "{#MyAppAssocKey}"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}"; ValueType: string; ValueName: ""; ValueData: "{#MyAppAssocName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{#pfDir}\{#MyAppExeName},0"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{#pfDir}\{#MyAppExeName}"" /load=""%1"""; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".dtproj"; ValueData: ""; Flags: uninsdeletekey

; Program registry entries
Root: HKCU; Subkey: "Software\DISMTools"; ValueType: none; Flags: uninsdeletekey createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Preview"; ValueType: none; Flags: uninsdeletekey createvalueifdoesntexist

Root: HKCU; Subkey: "Software\DISMTools\Preview\AdvBgProcesses"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\DISMTools\Preview\AdvBgProcesses"; ValueType: dword; ValueName: "DetectAllDrivers"; ValueData: 0; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Preview\AdvBgProcesses"; ValueType: dword; ValueName: "EnhancedAppxGetter"; ValueData: 1; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Preview\AdvBgProcesses"; ValueType: dword; ValueName: "RunAllProcs"; ValueData: 0; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Preview\AdvBgProcesses"; ValueType: dword; ValueName: "SkipFrameworks"; ValueData: 1; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Preview\AdvBgProcesses"; ValueType: dword; ValueName: "SkipNonRemovable"; ValueData: 1; Flags: uninsdeletevalue createvalueifdoesntexist

Root: HKCU; Subkey: "Software\DISMTools\Preview\BgProcesses"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\DISMTools\Preview\BgProcesses"; ValueType: dword; ValueName: "NotifyFrequency"; ValueData: 1; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Preview\BgProcesses"; ValueType: dword; ValueName: "ShowNotification"; ValueData: 1; Flags: uninsdeletevalue createvalueifdoesntexist

Root: HKCU; Subkey: "Software\DISMTools\Preview\ImgOps"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\DISMTools\Preview\ImgOps"; ValueType: dword; ValueName: "NoRestart"; ValueData: 0; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Preview\ImgOps"; ValueType: dword; ValueName: "Quiet"; ValueData: 0; Flags: uninsdeletevalue createvalueifdoesntexist

Root: HKCU; Subkey: "Software\DISMTools\Preview\Logs"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\DISMTools\Preview\Logs"; ValueType: dword; ValueName: "AutoLogs"; ValueData: 1; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Preview\Logs"; ValueType: expandsz; ValueName: "LogFile"; ValueData: "{win}\Logs\DISM\DISM.log"; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Preview\Logs"; ValueType: dword; ValueName: "LogLevel"; ValueData: 3; Flags: uninsdeletevalue createvalueifdoesntexist

Root: HKCU; Subkey: "Software\DISMTools\Preview\Output"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\DISMTools\Preview\Output"; ValueType: dword; ValueName: "EnglishOutput"; ValueData: 1; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Preview\Output"; ValueType: dword; ValueName: "ReportView"; ValueData: 0; Flags: uninsdeletevalue createvalueifdoesntexist

Root: HKCU; Subkey: "Software\DISMTools\Preview\Personalization"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\DISMTools\Preview\Personalization"; ValueType: dword; ValueName: "AllCaps"; ValueData: 0; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Preview\Personalization"; ValueType: dword; ValueName: "ColorMode"; ValueData: 0; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Preview\Personalization"; ValueType: dword; ValueName: "Language"; ValueData: 0; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Preview\Personalization"; ValueType: string; ValueName: "LogFont"; ValueData: "Courier New"; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Preview\Personalization"; ValueType: dword; ValueName: "LogFontBold"; ValueData: 0; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Preview\Personalization"; ValueType: dword; ValueName: "LogFontSi"; ValueData: 10; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Preview\Personalization"; ValueType: dword; ValueName: "SecondaryProgressPanelStyle"; ValueData: 1; Flags: uninsdeletevalue createvalueifdoesntexist

Root: HKCU; Subkey: "Software\DISMTools\Preview\Program"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\DISMTools\Preview\Program"; ValueType: expandsz; ValueName: "DismExe"; ValueData: "{win}\system32\dism.exe"; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Preview\Program"; ValueType: dword; ValueName: "SaveOnSettingsIni"; ValueData: 0; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Preview\Program"; ValueType: dword; ValueName: "Volatile"; ValueData: 0; Flags: uninsdeletevalue createvalueifdoesntexist

Root: HKCU; Subkey: "Software\DISMTools\Preview\ScratchDir"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\DISMTools\Preview\ScratchDir"; ValueType: dword; ValueName: "AutoScratch"; ValueData: 1; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Preview\ScratchDir"; ValueType: expandsz; ValueName: "ScratchDirLocation"; ValueData: ""; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Preview\ScratchDir"; ValueType: dword; ValueName: "UseScratch"; ValueData: 0; Flags: uninsdeletevalue createvalueifdoesntexist

Root: HKCU; Subkey: "Software\DISMTools\Preview\Startup"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\DISMTools\Preview\Startup"; ValueType: dword; ValueName: "CheckForUpdates"; ValueData: 1; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Preview\Startup"; ValueType: dword; ValueName: "RemountImages"; ValueData: 1; Flags: uninsdeletevalue createvalueifdoesntexist

Root: HKCU; Subkey: "Software\DISMTools\Preview\WndParams"; Flags: uninsdeletekey createvalueifdoesntexist

Root: HKCU; Subkey: "Software\DISMTools\Preview\InfoSaver"; Flags: uninsdeletekey createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Preview\InfoSaver"; ValueType: dword; ValueName: "SkipQuestions"; ValueData: 1; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Preview\InfoSaver"; ValueType: dword; ValueName: "Pkg_CompleteInfo"; ValueData: 1; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Preview\InfoSaver"; ValueType: dword; ValueName: "Feat_CompleteInfo"; ValueData: 1; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Preview\InfoSaver"; ValueType: dword; ValueName: "AppX_CompleteInfo"; ValueData: 1; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Preview\InfoSaver"; ValueType: dword; ValueName: "Cap_CompleteInfo"; ValueData: 1; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Preview\InfoSaver"; ValueType: dword; ValueName: "Drv_CompleteInfo"; ValueData: 1; Flags: uninsdeletevalue createvalueifdoesntexist

[Icons]
Name: "{autoprograms}\{#scName}"; Filename: "{#pfDir}\{#MyAppExeName}"
Name: "{autodesktop}\{#scName}"; Filename: "{#pfDir}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{#pfDir}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent shellexec