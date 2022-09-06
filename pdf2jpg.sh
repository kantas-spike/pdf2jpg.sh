#!/bin/sh

# USAGE:
#  ~/bin/pdf2jpg.sh PDF_FILE_PATH OUTPUT_DIR_PATH

# check the number of args
if [ $# -ne 2 ]; then
    echo "ERROR: Please specify two arguments."  1>&2
    echo ""  1>&2
    echo "USAGE: ~/bin/pdf2jpg.sh PDF_FILE_PATH OUTPUT_DIR_PATH" 1>&2
    exit 1
fi

# PDF_FILE_PATH
if [ ! -r "${1}" ]; then
    echo "ERROR: ${1} doesn't exist."  1>&2
    echo ""  1>&2
    echo "USAGE: ~/bin/pdf2jpg.sh PDF_FILE_PATH OUTPUT_DIR_PATH" 1>&2
    exit 1
fi

# OUTPUT_DIR_PATH
if [ ! -e "${2}" ]; then
    echo "make directory: ${2} ..."  1>&2
    mkdir -p "${2}"
fi

echo "convert to jpg: ${2}/slide%d.jpg ..."  1>&2
magick -density 400 "${1}" -scene 1 -resize 1280x720 "${2}/slide%d.jpg"