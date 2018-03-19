$packageName = 'hexchat'
$installerType = 'EXE'
$url = 'https://dl.hexchat.net/hexchat/HexChat%202.14.1%20x86.exe'
$url64 = 'https://dl.hexchat.net/hexchat/HexChat%202.14.1%20x64.exe'
$silentArgs = '/SILENT' # "/s /S /q /Q /quiet /silent /SILENT /VERYSILENT"
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
