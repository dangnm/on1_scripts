DIR="$( cd "$( dirname "$0" )" && pwd )"
echo ${PWD}
exiftool -Model="X-T2" -overwrite_original "$DIR"
