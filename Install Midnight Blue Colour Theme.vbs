Dim objFSO
Set objFSO = CreateObject("Scripting.FileSystemObject")
Dim CurrentDirectory
CurrentDirectory = objFSO.GetAbsolutePathName(".")
FindAndReplace (CurrentDirectory & "\Data\Plugins\TopSky\TopSkySettings.txt"), "Color_Coordination", "Color_Coordination=100,153,206"
FindAndReplace (CurrentDirectory & "\Data\Plugins\TopSky\TopSkySettings.txt"), "Color_Assumed", "Color_Assumed=179,204,231"
FindAndReplace (CurrentDirectory & "\Data\Plugins\TopSky\TopSkySettings.txt"), "Color_Redundant", "Color_Redundant=71,90,214"
FindAndReplace (CurrentDirectory & "\Data\Plugins\TopSky\TopSkySettings.txt"), "Color_Concerned", "Color_Concerned=82,111,159"
FindAndReplace (CurrentDirectory & "\Data\Plugins\TopSky\TopSkySettings.txt"), "Color_Sid_Star_Allocation", "Color_Sid_Star_Allocation=0,200,200"
FindAndReplace (CurrentDirectory & "\Data\Plugins\TopSky\TopSkySettings.txt"), "Color_Sid_Star_No_Allocation", "Color_Sid_Star_No_Allocation=0,150,150"
FindAndReplace (CurrentDirectory & "\Data\Plugins\TopSky\TopSkySettings.txt"), "Color_Rwy_Locked", "Color_Rwy_Locked=0,200,200"
FindAndReplace (CurrentDirectory & "\Hong Kong TOPSKY.prf"), "SettingsfileSYMBOLOGY", "Settings	SettingsfileSYMBOLOGY	\Data\Settings\Symbology_blue.txt"
WScript.Echo "Settings updated to Midnight Blue theme"

function FindAndReplace(strFilename, strFind, strReplace)
    Set inputFile = CreateObject("Scripting.FileSystemObject").OpenTextFile(strFilename, 1)
    strInputFile = inputFile.ReadAll
    inputFile.Close
    Set inputFile = Nothing
    Set re = New RegExp
    re.Pattern    = ".*" & strFind & ".*(\r?\n)"
    re.IgnoreCase = False
    re.Global     = True
    newSettings = re.Replace(strInputFile, strReplace & "$1")
    Set outputFile = CreateObject("Scripting.FileSystemObject").OpenTextFile(strFilename,2,true)
    outputFile.Write newSettings
    outputFile.Close
    Set outputFile = Nothing
end function 
