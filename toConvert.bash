#!/bin/bash 

# VARIABLES 
folderToExport=$1
scriptName="toConvert.bash"
exportFolderExist=false


# FUNCTIONS 
function checkIfFolderExist() {
    if [ -d $folderToExport ]
    then
        exportFolderExist=true
    fi
}

function convertToWebp() {
    local fileName=${1%.*}
    local fileExtension=${1##*.}
    cwebp -q 60 $fileName.$fileExtension -o $folderToExport/$fileName.webp
}

# MAIN
checkIfFolderExist

if [ $exportFolderExist == false ]
then
    #Creating the export folder
    mkdir $folderToExport
    echo $folderToExport "created"
fi

# Loop on all elements in path of files to convert ($1)
for file in * ; do
    if [ -f $file ] && [ "$file" != $scriptName ]; then
        convertToWebp $file
    fi
done

