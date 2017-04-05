$ErrorActionPreference = 'Stop';

$packageName= 'Hourglass'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/dziemborowicz/hourglass/releases/download/v1.8.0/HourglassInstaller.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'Hourglass*'

  checksum      = '02FA81EAEA09FF00105CD4B9E465D61B070BE5313F7F9B165E81EA81C943720F'
  checksumType  = 'sha256'

  silentArgs    = "/install /quiet /norestart"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
