Dim objFSO
Set objFSO = CreateObject("Scripting.FileSystemObject")
Dim CurrentDirectory
CurrentDirectory = objFSO.GetAbsolutePathName(".")
FindAndReplace (CurrentDirectory & "\Data\Plugins\TopSky\TopSkySettings.txt"), "Color_Coordination", "Color_Coordination=200,200,200"
FindAndReplace (CurrentDirectory & "\Data\Plugins\TopSky\TopSkySettings.txt"), "Color_Assumed", "Color_Assumed=255,255,128"
FindAndReplace (CurrentDirectory & "\Data\Plugins\TopSky\TopSkySettings.txt"), "Color_Redundant", "Color_Redundant=128,128,128"
FindAndReplace (CurrentDirectory & "\Data\Plugins\TopSky\TopSkySettings.txt"), "Color_Concerned", "Color_Concerned=160,160,160"
FindAndReplace (CurrentDirectory & "\Data\Plugins\TopSky\TopSkySettings.txt"), "Color_Sid_Star_Allocation", "Color_Sid_Star_Allocation=185,185,15"
FindAndReplace (CurrentDirectory & "\Data\Plugins\TopSky\TopSkySettings.txt"), "Color_Sid_Star_No_Allocation", "Color_Sid_Star_No_Allocation=170,170,14"
FindAndReplace (CurrentDirectory & "\Data\Plugins\TopSky\TopSkySettings.txt"), "Color_Rwy_Locked", "Color_Rwy_Locked=210,210,41"
FindAndReplace (CurrentDirectory & "\Data\Plugins\TopSky\TopSkySettings.txt"), "Color_Weather_Map", "Color_Weather_Map=99,99,50"
FindAndReplace (CurrentDirectory & "\Data\Plugins\TopSky\TopSkyMaps.txt"), "COLORDEF:SID", "COLORDEF:SID:83:94:78"
FindAndReplace (CurrentDirectory & "\Data\Plugins\TopSky\TopSkyMaps.txt"), "COLORDEF:STAR", "COLORDEF:STAR:120:140:140"
FindAndReplace (CurrentDirectory & "\Data\Plugins\TopSky\TopSkyMaps.txt"), "COLORDEF:TMABORDER", "COLORDEF:TMABORDER:153:139:128"
FindAndReplace (CurrentDirectory & "\Data\Sector\Hong-Kong-Sector-File.sct"), "#define Pattern", "#define Pattern 11992082"
FindAndReplace (CurrentDirectory & "\Data\Sector\Hong-Kong-Sector-File.sct"), "#define SectorBoundaries", "#define SectorBoundaries 8424345"
FindAndReplace (CurrentDirectory & "\Hong Kong TOPSKY.prf"), "SettingsfileSYMBOLOGY", "Settings	SettingsfileSYMBOLOGY	\Data\Settings\Symbology_black.txt"
WScript.Echo "Settings updated to Golden Black theme"

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
