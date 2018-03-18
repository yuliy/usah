
function show_usage {
    echo "Usage: $0 <source_dir> <dest_dir>"
    exit 1
}

if [ $# -ne 2 ]; then
    show_usage
else
    if [ -d $1 ]; then
        source_dir=$1
    else
        echo 'Invalid <source_dir>'
        show_usage
    fi

    if [ -d $2 ]; then
        dest_dir=$2
    else
        echo 'Invalid <dest_dir>'
        show_usage
    fi
fi

printf "Source directory: ${source_dir}\n"
printf "Destination directory: ${dest_dir}\n"
