$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/dziemborowicz/hourglass/releases/download/v1.9.0/HourglassInstaller.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'Hourglass*'

  checksum      = 'B722E67070EAB4B90105FF106D6A6943B46F31BF266BA75725D6AC731D9F31DD'
  checksumType  = 'sha256'

  silentArgs    = "/install /quiet /norestart"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
