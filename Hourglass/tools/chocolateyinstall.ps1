$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/dziemborowicz/hourglass/releases/download/v1.12.0/HourglassInstaller.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'Hourglass*'

  checksum      = 'd7c835fc12d931d250d04ff44d4526af390f0ec74ebb9f3e67e1966ba740010a'
  checksumType  = 'sha256'

  silentArgs    = "/install /quiet /norestart"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
