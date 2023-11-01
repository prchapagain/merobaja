# mero baja nepali musical instruments vst and au plugins

## install on windows
1. clone this repository or download this repository from [here](https://github.com/khumnath/merobaja/archive/refs/heads/main.zip)
2. copy all contents from `windows` folder to `c:\Program Files\Steinberg\Vstplugins`
3. refresh your DAW or rescan plugins.
4. find plugin merobaja and add to instrument track.
6. when plugin asks for activation code contact me.

## install windows from commandline
1. we will use winget to install git. if winget is not installed(possible to not installed by default on earlier version of windows) install winget by visiting tutorial on https://phoenixnap.com/kb/install-winget.
2. open cmd and run `winget install --id Git.Git -e --source winget` and give administrator right to install git.
3. close cmd and again open cmd as administrator.
4. then run command `CMD.exe /c curl -s https://raw.githubusercontent.com/khumnath/merobaja/main/install-win.bat | cmd`
5. installation is finished you can search plugin on your DAW.
6. for activate plugin contact me

## install in mac os 
1. open terminal and check git version by typing `git --version`
2. if there is git installed  command output will be  like this `git version 2.24.3 ..........` or it will alert you that git is an unknown command. If it's an unknown command install git using command `sudo xcode-select --install` and check again git version.
3. to install merobaja plugin automaticaly run command `bash <(curl -s https://raw.githubusercontent.com/khumnath/merobaja/main/download-and-install.sh)`
4. load plugin in logic pro from Software Instrument:point_right:AU Instruments:point_right:merotips.com:point_right:merobaja.
5. for activate plugin contact me
