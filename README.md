# Scripts
Useful scripts for software developers. Organised into folders by type.

## Cmd
The windows command shell.

### ls.bat
A simple batch file (`.bat`) to alias `dir` as `ls`. Add this folder to your `PATH` variable to use. In Windows 10, press the Windows key and type PATH.

## Powershell
The best way to use these scripts is create a symbolic link between your `%UserProfile%\Documents\WindowsPowerShell\` and the powershell folder of the git repository.

For example:

- Assuming the local git repository is in `c:/projects/brainwipe/scripts`
- Delete your existing `%UserProfile%\Documents\WindowsPowerShell\` folder
- Open a `cmd` under Administrator
- cd `%UserProfile%\Documents`
- `mklink /d WindowsPowershell "c:/projects/brainwipe/scripts/powershell"

Now windows will point `Documents/WindowsPowershell` at the git repo. Powershell will scan the `/Modules/` folder for modules, although the `Import-Module` command is required to load them.

### Profile
This custom profile does the following:

#### Sets a custom prompt

I like my shell window to use `[Time] <working dir> >` for example: `[12:20:18] C:\ >` or `[12:20:18]  projects >`

More information on [TechNet](https://technet.microsoft.com/en-us/magazine/2008.10.windowspowershell.aspx).

#### Imports the modules in the powershell folders

All of the scripts I have included in Powershell modules (Powershell v2 onwards) are imported.

#### Sets the Solarized Dark theme

These are the files for the [Solarize](http://ethanschoonover.com/solarized) theme by [@leddt](https://github.com/leddt) in his [own repo](https://github.com/leddt/visualstudio-colors-solarized). Check out the instructions there.

#### Go to c:, Clear the screen

Most operations I do start from C: so I navigate there and clear the screen

### Find all ports in use with the processes that are using them

Usage: `Get-NetworkStatistics | Format-Table`

Joins together `netstat` and Win32 process monitor to provide a list of 
Originally from [here](http://poshcode.org/4129)

In `./powershell/modules/network/network.psm1`

### Docker clean

Usage: `docker-clean.ps1`

A full docker clean down - useful for developer system cleaning. Stops all running containers, removes them and deleted their associated images.

## Bash
Using MINGW64 bash shell you can add your scripts directory to path using:

`PATH /path/to/brainwipe/scripts:${PATH}`
`export PATH`

### Gitter
This script adds all and commits, prompting for a JIRA ticket number (which I always forget) and then pushes to remote.
Written by [ClinicalCharles](https://github.com/ClinicalCharles).

Usage: `gitter`

You'll then be prompted for your JIRA ticket numbers and a commit message. 