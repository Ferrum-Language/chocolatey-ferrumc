$ErrorActionPreference = 'Stop'

$packageName = 'ferrumc'
$url64       = 'https://github.com/Ferrum-Language/Ferrum/releases/download/v0.3.0/ferrumc-v0.3.0-windows-x86_64.zip'
$checksum64  = '4b332aee1b5d2eb954a25706d1eec1203b23cd4de4776493be833cb39e22518d'

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage `
  -PackageName    $packageName `
  -Url64bit       $url64 `
  -Checksum64     $checksum64 `
  -ChecksumType64 'sha256' `
  -UnzipLocation  $toolsDir
