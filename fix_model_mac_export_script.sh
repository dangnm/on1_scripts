# /bin/sh /Users/dangnguyen/Documents/fix_model_mac_export_script.sh -f %filepath%

#logger -s "Running" 2>> ~/Downloads/exiftool_12_72_cam_model_name_fix/test.txt
while getopts ":f:" opt; do
  case $opt in
    f) file_path="$OPTARG"
    ;;
    \?) echo "Invalid option -$OPTARG" >&2
    exit 1
    ;;
  esac

  case $OPTARG in
    -*) echo "Option $opt needs a valid argument"
    exit 1
    ;;
  esac
done
/usr/local/bin/exiftool -Model="X-T2" -overwrite_original "$file_path"

#logger -s "$file_path" 2>> ~/Downloads/exiftool_12_72_cam_model_name_fix/test.txt
