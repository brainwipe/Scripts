# Sets the default Powershell Command Prompt as: [time] currentdir >
# and clears the window.
# Put in %UserProfile%\Documents\WindowsPowerShell\
# https://github.com/brainwipe/scripts

function Prompt {
  # Print the current time:
  Write-Host ("[") -nonewline
  Write-Host (Get-Date -format HH:mm.ss) -nonewline
  Write-Host ("] ") -nonewline
  # Print the working directory:
  $p = Split-Path -leaf -path (Get-Location)
  Write-Host ($p) -nonewline
  Write-Host (">") -nonewline
  return " ";
}

Import-Module PSReadLine

# Import all the functions in the Network module in ./Modules/Network.psm1
Import-Module Network -DisableNameChecking

$env:PSModulePath = $env:PSModulePath + ";c:\Projects\MCO-PowershellCore\src"
Import-Module MCO -DisableNameChecking

. (Join-Path -Path (Split-Path -Parent -Path $PROFILE) -ChildPath 'SolarizeTheme/Set-SolarizedDarkColorDefaults.ps1')

# Move to C: and clear the screen
cd \
cls

