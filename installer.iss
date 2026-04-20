[Setup]
AppName=Random Keypress
AppVersion=2.0.0
AppPublisher=RoboticsEqualsFun
AppId={A1B2C3D4-E5F6-7890-ABCD-1234567890EF}
AppPublisherURL=https://github.com/roboticsequalsfun/random-keypress
DefaultDirName={autopf}\Random Keypress
PrivilegesRequiredOverridesAllowed=dialog
DefaultGroupName=Random Keypress
OutputBaseFilename=randomkeypress-2.0.0-installer
Compression=lzma
SolidCompression=yes
WizardStyle=modern
CloseApplications=yes

[Files]
Source: "Random Keypress.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "config.ini"; DestDir: "{app}"; Flags: ignoreversion
Source: "icon.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "README.md"; DestDir: "{app}"; Flags: ignoreversion;
Source: "LICENSE"; DestDir: "{app}"; Flags: ignoreversion;

[Tasks]
Name: "desktopicon"; Description: "Create a desktop shortcut"; GroupDescription: "Additional shortcuts:"

[Icons]
Name: "{group}\Random Keypress"; Filename: "{app}\Random Keypress.exe"; IconFilename: "{app}\icon.ico"
Name: "{userdesktop}\Random Keypress"; Filename: "{app}\Random Keypress.exe"; IconFilename: "{app}\icon.ico"; Tasks: desktopicon

[Run]
Filename: "{app}\Random Keypress.exe"; Description: "Launch Random Keypress after installation"; Flags: nowait postinstall skipifsilent

[InstallDelete]
Type: dirifempty; Name: "{app}"
