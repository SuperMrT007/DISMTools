; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define verConst           "0.5.1"

#define MyAppName          "DISMTools"
#define MyAppExeName       "DISMTools.exe"
#define MyAppVersion       GetVersionNumbersString('.\files\' + MyAppExeName)
#define MyAppPublisher     "CodingWonders Software"
#define MyAppURL           "https://github.com/CodingWonders/DISMTools"
#define MyAppAssocName     MyAppName + " project"
#define MyAppAssocExt      ".dtproj"
#define MyAppAssocKey      StringChange(MyAppAssocName, " ", "") + MyAppAssocExt

#define pfDir              "{commonpf}\DISMTools\Stable"

#define scName             "DISMTools"

#define CurrentYear        GetDateTimeString('yyyy','','')
#define MyAppCopyright     "(c) 2022-" + CurrentYear + " " + MyAppPublisher

#define AppListName        MyAppName + " " + verConst

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{BC1A3BB3-3B0A-4D21-B778-0B21C136C6E0}}
; AppId={{AB033696-A4AC-4DF2-B802-9D8BB8B0EEB5}} - PREVIEW RELEASES ONLY
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}

; Uninstaller info
UninstallDisplayName={#AppListName}
UninstallDisplayIcon={app}\{#MyAppExeName}
AppPublisher={#MyAppPublisher}

; Copyright info
AppCopyright={#MyAppCopyright}

; URL support setup
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}

; Setup version info
VersionInfoDescription={#MyAppName} installer
VersionInfoProductName={#MyAppName}
VersionInfoProductVersion={#MyAppVersion}
VersionInfoProductTextVersion={#MyAppVersion}
VersionInfoVersion={#MyAppVersion}
VersionInfoTextVersion={#MyAppVersion}

; Language info
ShowLanguageDialog=yes
UsePreviousLanguage=no
LanguageDetectionMethod=uilanguage

;Wizard setup
WizardStyle=modern
WizardImageFile=mainImg.bmp
WizardSmallImageFile=logo.bmp

; Uncomment the following line to run in non administrative install mode (install for current user only.)
PrivilegesRequired=admin

DefaultDirName={#pfDir}
DisableDirPage=yes
ChangesAssociations=yes
DisableProgramGroupPage=yes
LicenseFile=.\files\LICENSE
OutputBaseFilename=dt_setup
Compression=lzma
SolidCompression=yes
DisableWelcomePage=no
ArchitecturesInstallIn64BitMode=x64
CloseApplications=yes
SetupIconFile=dt_inst.ico
UninstallFilesDir={#pfDir}

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
Source: ".\files\Scintilla.NET.dll"; DestDir: "{#pfDir}"; Flags: ignoreversion
Source: ".\files\System.dll"; DestDir: "{#pfDir}"; Flags: ignoreversion
Source: ".\files\System.Drawing.dll"; DestDir: "{#pfDir}"; Flags: ignoreversion
Source: ".\files\System.Management.dll"; DestDir: "{#pfDir}"; Flags: ignoreversion
Source: ".\files\System.ServiceModel.dll"; DestDir: "{#pfDir}"; Flags: ignoreversion
Source: ".\files\System.Windows.Forms.dll"; DestDir: "{#pfDir}"; Flags: ignoreversion
Source: ".\files\System.Xml.dll"; DestDir: "{#pfDir}"; Flags: ignoreversion
Source: ".\files\System.Xml.Linq.dll"; DestDir: "{#pfDir}"; Flags: ignoreversion
Source: ".\files\WeifenLuo.WinFormsUI.Docking.dll"; DestDir: "{#pfDir}"; Flags: ignoreversion
Source: ".\files\WeifenLuo.WinFormsUI.Docking.ThemeVS2012.dll"; DestDir: "{#pfDir}"; Flags: ignoreversion
Source: ".\files\AutoUnattend\*"; DestDir: "{#pfDir}\AutoUnattend"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: ".\files\bin\*"; DestDir: "{#pfDir}\bin"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: ".\files\docs\*"; DestDir: "{#pfDir}\docs"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: ".\files\runtimes\*"; DestDir: "{#pfDir}\runtimes"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: ".\files\tools\*"; DestDir: "{#pfDir}\tools"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: ".\files\videos\*"; DestDir: "{#pfDir}\videos"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: ".\files\DT_WinADK.reg"; DestDir: "{#pfDir}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Registry]
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocExt}\OpenWithProgids"; ValueType: string; ValueName: "{#MyAppAssocKey}"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}"; ValueType: string; ValueName: ""; ValueData: "{#MyAppAssocName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{#pfDir}\{#MyAppExeName},0"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{#pfDir}\{#MyAppExeName}"" /load=""%1"""; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".dtproj"; ValueData: ""; Flags: uninsdeletekey

; Program registry entries
Root: HKCU; Subkey: "Software\DISMTools"; ValueType: none; Flags: uninsdeletekey createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Stable"; ValueType: none; Flags: uninsdeletekey createvalueifdoesntexist

Root: HKCU; Subkey: "Software\DISMTools\Stable\AdvBgProcesses"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\DISMTools\Stable\AdvBgProcesses"; ValueType: dword; ValueName: "DetectAllDrivers"; ValueData: 0; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Stable\AdvBgProcesses"; ValueType: dword; ValueName: "EnhancedAppxGetter"; ValueData: 1; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Stable\AdvBgProcesses"; ValueType: dword; ValueName: "RunAllProcs"; ValueData: 0; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Stable\AdvBgProcesses"; ValueType: dword; ValueName: "SkipFrameworks"; ValueData: 1; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Stable\AdvBgProcesses"; ValueType: dword; ValueName: "SkipNonRemovable"; ValueData: 1; Flags: uninsdeletevalue createvalueifdoesntexist

Root: HKCU; Subkey: "Software\DISMTools\Stable\BgProcesses"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\DISMTools\Stable\BgProcesses"; ValueType: dword; ValueName: "NotifyFrequency"; ValueData: 1; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Stable\BgProcesses"; ValueType: dword; ValueName: "ShowNotification"; ValueData: 1; Flags: uninsdeletevalue createvalueifdoesntexist

Root: HKCU; Subkey: "Software\DISMTools\Stable\ImgOps"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\DISMTools\Stable\ImgOps"; ValueType: dword; ValueName: "NoRestart"; ValueData: 0; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Stable\ImgOps"; ValueType: dword; ValueName: "Quiet"; ValueData: 0; Flags: uninsdeletevalue createvalueifdoesntexist

Root: HKCU; Subkey: "Software\DISMTools\Stable\Logs"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\DISMTools\Stable\Logs"; ValueType: dword; ValueName: "AutoLogs"; ValueData: 1; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Stable\Logs"; ValueType: expandsz; ValueName: "LogFile"; ValueData: "{win}\Logs\DISM\DISM.log"; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Stable\Logs"; ValueType: dword; ValueName: "LogLevel"; ValueData: 3; Flags: uninsdeletevalue createvalueifdoesntexist

Root: HKCU; Subkey: "Software\DISMTools\Stable\Output"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\DISMTools\Stable\Output"; ValueType: dword; ValueName: "EnglishOutput"; ValueData: 1; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Stable\Output"; ValueType: dword; ValueName: "ReportView"; ValueData: 0; Flags: uninsdeletevalue createvalueifdoesntexist

Root: HKCU; Subkey: "Software\DISMTools\Stable\Personalization"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\DISMTools\Stable\Personalization"; ValueType: dword; ValueName: "AllCaps"; ValueData: 0; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Stable\Personalization"; ValueType: dword; ValueName: "ColorMode"; ValueData: 0; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Stable\Personalization"; ValueType: dword; ValueName: "ColorSchemes"; ValueData: 0; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Stable\Personalization"; ValueType: dword; ValueName: "ExpandedProgressPanel"; ValueData: 1; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Stable\Personalization"; ValueType: dword; ValueName: "Language"; ValueData: 0; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Stable\Personalization"; ValueType: string; ValueName: "LogFont"; ValueData: "Consolas"; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Stable\Personalization"; ValueType: dword; ValueName: "LogFontBold"; ValueData: 0; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Stable\Personalization"; ValueType: dword; ValueName: "LogFontSi"; ValueData: 11; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Stable\Personalization"; ValueType: dword; ValueName: "NewDesign"; ValueData: 1; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Stable\Personalization"; ValueType: dword; ValueName: "SecondaryProgressPanelStyle"; ValueData: 1; Flags: uninsdeletevalue createvalueifdoesntexist

Root: HKCU; Subkey: "Software\DISMTools\Stable\Program"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\DISMTools\Stable\Program"; ValueType: expandsz; ValueName: "DismExe"; ValueData: "{win}\system32\dism.exe"; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Stable\Program"; ValueType: dword; ValueName: "SaveOnSettingsIni"; ValueData: 0; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Stable\Program"; ValueType: dword; ValueName: "Volatile"; ValueData: 0; Flags: uninsdeletevalue createvalueifdoesntexist

Root: HKCU; Subkey: "Software\DISMTools\Stable\ScratchDir"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\DISMTools\Stable\ScratchDir"; ValueType: dword; ValueName: "AutoScratch"; ValueData: 1; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Stable\ScratchDir"; ValueType: expandsz; ValueName: "ScratchDirLocation"; ValueData: ""; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Stable\ScratchDir"; ValueType: dword; ValueName: "UseScratch"; ValueData: 0; Flags: uninsdeletevalue createvalueifdoesntexist

Root: HKCU; Subkey: "Software\DISMTools\Stable\Startup"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\DISMTools\Stable\Startup"; ValueType: dword; ValueName: "CheckForUpdates"; ValueData: 1; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Stable\Startup"; ValueType: dword; ValueName: "RemountImages"; ValueData: 1; Flags: uninsdeletevalue createvalueifdoesntexist

Root: HKCU; Subkey: "Software\DISMTools\Stable\Shutdown"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\DISMTools\Stable\Shutdown"; ValueType: dword; ValueName: "AutoCleanMounts"; ValueData: 0; Flags: uninsdeletevalue createvalueifdoesntexist

Root: HKCU; Subkey: "Software\DISMTools\Stable\WndParams"; Flags: uninsdeletekey createvalueifdoesntexist

Root: HKCU; Subkey: "Software\DISMTools\Stable\InfoSaver"; Flags: uninsdeletekey createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Stable\InfoSaver"; ValueType: dword; ValueName: "SkipQuestions"; ValueData: 1; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Stable\InfoSaver"; ValueType: dword; ValueName: "Pkg_CompleteInfo"; ValueData: 1; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Stable\InfoSaver"; ValueType: dword; ValueName: "Feat_CompleteInfo"; ValueData: 1; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Stable\InfoSaver"; ValueType: dword; ValueName: "AppX_CompleteInfo"; ValueData: 1; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Stable\InfoSaver"; ValueType: dword; ValueName: "Cap_CompleteInfo"; ValueData: 1; Flags: uninsdeletevalue createvalueifdoesntexist
Root: HKCU; Subkey: "Software\DISMTools\Stable\InfoSaver"; ValueType: dword; ValueName: "Drv_CompleteInfo"; ValueData: 1; Flags: uninsdeletevalue createvalueifdoesntexist

; Special - Set Internet Explorer browser emulation settings
Root: HKCU; Subkey: "Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_BROWSER_EMULATION"; ValueType: dword; ValueName: "DISMTools.exe"; ValueData: 11001; Flags: uninsdeletevalue createvalueifdoesntexist

[Icons]
Name: "{autoprograms}\{#scName}"; Filename: "{#pfDir}\{#MyAppExeName}"
Name: "{autodesktop}\{#scName}"; Filename: "{#pfDir}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{#pfDir}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent shellexec

[UninstallRun]
; Ends wimserv, as it causes log files to not be deleted
Filename: "{cmd}"; Parameters: "/C qprocess wimserv.exe && if %ERRORLEVEL% equ 0 (taskkill /f /im wimserv.exe /t) else (exit 0)"; Flags: waituntilterminated runhidden

[UninstallDelete]
Type: filesandordirs; Name: "{#pfDir}\logs"  
Type: filesandordirs; Name: "{#pfDir}\tempinfo"  
Type: files; Name: "{#pfDir}\settings.ini"  
Type: filesandordirs; Name: "{#pfDir}"
