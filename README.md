# on1_scripts
on1 scripts for fixing exif issues

# Windows 

## Create on1_shell folder

Example: C:\tools\on1_shell

## Copy fix_model_win_export_script.ps1 to the folder

## Copy exiftool.exe to the folder

## Grant permission to run script

Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

## Add this line to On1 export script

PowerShell.exe -File "C:\tools\on1_shell\fix_model_win_export_script.ps1" '%filepath%'

# Mac

## Install exiftool

## Copy fix_model_mac_export_script.sh to Documents folder

Example: /Users/my_account/Documents/fix_model_mac_export_script.sh

## Add this line to On1 export script

/bin/sh /Users/my_account/Documents/fix_model_mac_export_script.sh -f %filepath%

