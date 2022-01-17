$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.hexchat.net/hexchat/HexChat%202.16.0%20x86.exe'
$url64      = 'https://dl.hexchat.net/hexchat/HexChat%202.16.0%20x64.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'hexchat*'

  checksum      = 'f3f0ccd7d14369b48d103db95a91729e97afa4f051353ef2a640cd6d9f6f37ac'
  checksumType  = 'sha256'
  checksum64    = '5e4b7c0d599a4062b651855c46a1c030633da531041818b3fbed6403f73bea2e'
  checksumType64= 'sha256'

  silentArgs    = "/SILENT"
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
