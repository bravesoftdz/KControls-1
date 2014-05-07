; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
AppName=KIcon
AppVerName=KIcon 1.8
AppPublisher=Tomas Krysl
AppPublisherURL=http://www.tkweb.eu
AppSupportURL=http://www.tkweb.eu
AppUpdatesURL=http://www.tkweb.eu
DefaultDirName=C:\Data\KIcon
DefaultGroupName=TK\KIcon
OutputDir=D:\Data\Delphi\KComponents
OutputBaseFilename=KIcon_1.8
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "D:\Data\Delphi\KComponents\KIcon_ReadMe.txt"; DestDir: "{app}"; Flags: ignoreversion isreadme

Source: "D:\Data\Delphi\KComponents\Source\KIcon.pas"; DestDir: "{app}\Source"; Flags: ignoreversion
Source: "D:\Data\Delphi\KComponents\Source\KFunctions.pas"; DestDir: "{app}\Source"; Flags: ignoreversion
Source: "D:\Data\Delphi\KComponents\Source\KGraphics.pas"; DestDir: "{app}\Source"; Flags: ignoreversion
Source: "D:\Data\Delphi\KComponents\Source\KControls.inc"; DestDir: "{app}\Source"; Flags: ignoreversion

Source: "D:\Data\Delphi\KComponents\Help\KIcon\KIcon.chm"; DestDir: "{app}\Help"; Flags: ignoreversion

Source: "D:\Data\Delphi\KComponents\Demos\KIcon\Demo.dpr"; DestDir: "{app}\Demos"; Flags: ignoreversion
Source: "D:\Data\Delphi\KComponents\Demos\KIcon\Demo.lpr"; DestDir: "{app}\Demos"; Flags: ignoreversion
Source: "D:\Data\Delphi\KComponents\Demos\KIcon\Demo.lpi"; DestDir: "{app}\Demos"; Flags: ignoreversion
Source: "D:\Data\Delphi\KComponents\Demos\KIcon\Demo.lrs"; DestDir: "{app}\Demos"; Flags: ignoreversion
Source: "D:\Data\Delphi\KComponents\Demos\KIcon\*.lfm"; DestDir: "{app}\Demos"; Flags: ignoreversion
Source: "D:\Data\Delphi\KComponents\Demos\KIcon\*.dfm"; DestDir: "{app}\Demos"; Flags: ignoreversion
Source: "D:\Data\Delphi\KComponents\Demos\KIcon\*.pas"; DestDir: "{app}\Demos"; Flags: ignoreversion
Source: "D:\Data\Delphi\KComponents\Source\XPman.res"; DestDir: "{app}\Demos"; Flags: ignoreversion

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{cm:UninstallProgram,KIcon}"; Filename: "{uninstallexe}"
Name: "{group}\KIcon.pas"; Filename: "{app}\Source\KIcon.pas"
Name: "{group}\KIcon Help"; Filename: "{app}\Help\KIcon.chm"
Name: "{group}\KIcon ReadMe"; Filename: "{app}\KIcon_ReadMe.txt"

[UninstallDelete]
Type: filesandordirs; Name: "{app}\*"