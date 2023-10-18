@echo off

echo "downloading......."
git "clone" "https://github.com/khumnath/merobaja.git"
cd "merobaja"
xcopy  /s /e /y "windows" "C:\Program Files\Steinberg\Vstplugins"
cd ".."
rmdir /Q /S merobaja
del install-win.bat
echo "plugin installed and cleared temporary files!! now ask us for activation key"
