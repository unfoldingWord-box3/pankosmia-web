   [Setup]
   AppName=Liminal
   AppVersion=0.26
   DefaultDirName={commonpf}\Liminal
   DefaultGroupName=Liminal
   OutputBaseFilename=LiminalSetup
   Compression=lzma
   SolidCompression=yes

   [Files]
   Source: ".\liminal-windows-v0.2.6\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs

   [Icons]
   Name: "{group}\Liminal"; Filename: "{app}\liminal.bat"
   Name: "{userdesktop}\Liminal"; Filename: "{app}\liminal.bat"; Tasks: desktopicon
   Name: "{group}\Uninstall Liminal (Delete App Files)"; Filename: "{uninstallexe}"; Parameters: "/DELETE /ALLFILES"

   [Run]
   Filename: "{app}\custom_uninstaller.bat"; Parameters: "{app}"

   [Tasks]
   Name: "desktopicon"; Description: "Create a Luminal &desktop icon"; GroupDescription: "Luminal icons:"
   