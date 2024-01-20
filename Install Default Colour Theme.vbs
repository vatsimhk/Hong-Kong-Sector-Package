Dim objFSO
Set objFSO = CreateObject("Scripting.FileSystemObject")
Dim CurrentDirectory
CurrentDirectory = objFSO.GetAbsolutePathName(".")
FindAndReplace (CurrentDirectory & "\Data\Plugins\TopSky\TopSkySettings.txt"), "Color_Coordination", "Color_Coordination=117,132,142"
FindAndReplace (CurrentDirectory & "\Data\Plugins\TopSky\TopSkySettings.txt"), "Color_Assumed", "Color_Assumed=241,246,255"
FindAndReplace (CurrentDirectory & "\Data\Plugins\TopSky\TopSkySettings.txt"), "Color_Redundant", "Color_Redundant=229,214,130"
FindAndReplace (CurrentDirectory & "\Data\Plugins\TopSky\TopSkySettings.txt"), "Color_Concerned", "Color_Concerned=117,132,142"
FindAndReplace (CurrentDirectory & "\Data\Plugins\TopSky\TopSkySettings.txt"), "Color_Sid_Star_Allocation", "Color_Sid_Star_Allocation=241,246,255"
FindAndReplace (CurrentDirectory & "\Data\Plugins\TopSky\TopSkySettings.txt"), "Color_Sid_Star_No_Allocation", "Color_Sid_Star_No_Allocation=239,158,107"
FindAndReplace (CurrentDirectory & "\Data\Plugins\TopSky\TopSkySettings.txt"), "Color_Rwy_Locked", "Color_Rwy_Locked=241,246,255"
FindAndReplace (CurrentDirectory & "\Data\Plugins\TopSky\TopSkySettings.txt"), "Color_Weather_Map", "Color_Weather_Map=0,86,86"
FindAndReplace (CurrentDirectory & "\Data\Plugins\TopSky\TopSkyMaps.txt"), "COLORDEF:SID", "COLORDEF:SID:84:96:112"
FindAndReplace (CurrentDirectory & "\Data\Plugins\TopSky\TopSkyMaps.txt"), "COLORDEF:STAR", "COLORDEF:STAR:106:119:171"
FindAndReplace (CurrentDirectory & "\Data\Plugins\TopSky\TopSkyMaps.txt"), "COLORDEF:TMABORDER", "COLORDEF:TMABORDER:146:157:178"
FindAndReplace (CurrentDirectory & "\Data\Sector\Hong-Kong-Sector-File.sct"), "#define Pattern", "#define Pattern 11237226"
FindAndReplace (CurrentDirectory & "\Data\Sector\Hong-Kong-Sector-File.sct"), "#define SectorBoundaries", "#define SectorBoundaries 11705746"
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
