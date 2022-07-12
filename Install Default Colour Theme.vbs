Dim objFSO
Set objFSO = CreateObject("Scripting.FileSystemObject")
Dim CurrentDirectory
CurrentDirectory = objFSO.GetAbsolutePathName(".")
FindAndReplace (CurrentDirectory & "\Data\Plugins\TopSky\TopSkySettings.txt"), "Color_Coordination", "//Color_Coordination"
FindAndReplace (CurrentDirectory & "\Data\Plugins\TopSky\TopSkySettings.txt"), "Color_Assumed", "//Color_Assumed"
FindAndReplace (CurrentDirectory & "\Data\Plugins\TopSky\TopSkySettings.txt"), "Color_Redundant", "//Color_Redundant"
FindAndReplace (CurrentDirectory & "\Data\Plugins\TopSky\TopSkySettings.txt"), "Color_Concerned", "//Color_Concerned"
FindAndReplace (CurrentDirectory & "\Data\Plugins\TopSky\TopSkySettings.txt"), "Color_Sid_Star_Allocation", "//Color_Sid_Star_Allocation"
FindAndReplace (CurrentDirectory & "\Data\Plugins\TopSky\TopSkySettings.txt"), "Color_Sid_Star_No_Allocation", "//Color_Sid_Star_No_Allocation"
FindAndReplace (CurrentDirectory & "\Data\Plugins\TopSky\TopSkySettings.txt"), "Color_Rwy_Locked", "//Color_Rwy_Locked"
FindAndReplace (CurrentDirectory & "\Hong Kong TOPSKY.prf"), "SettingsfileSYMBOLOGY", "Settings	SettingsfileSYMBOLOGY	\Data\Settings\Symbology.txt"
WScript.Echo "Settings updated to Default theme"

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
