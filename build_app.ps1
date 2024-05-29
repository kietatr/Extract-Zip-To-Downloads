[string]$VIRTUAL_ENV = "unzip_files"
[string]$MAIN_FILE = "extract_zip_to_downloads.py"

& ./$VIRTUAL_ENV/Scripts/Activate.ps1

Write-Host "./$MAIN_FILE"

Write-Host "`nInstalling requirements ..."
py -m pip install -r requirements.txt

Write-Host "`nRunning pyinstaller ..."
pyinstaller --noconfirm --onefile --console "./$MAIN_FILE"