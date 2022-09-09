#!/bin/sh 

# VARIABLES 
folderContainingFilesToConvert=`pwd`
folderToExport=$1
scriptName="toConvert.sh"
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
    cwebp -q 60 $fileName.$fileExtension -o $folderContainingFilesToConvert/$folderToExport/$fileName.webp
}

function getExtension() {
    local fileExtension=${1##*.}
    echo $fileExtension
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
cd $folderContainingFilesToConvert
for file in * ; do
    if [ -f $file ] && [ "$file" != $scriptName ]; then
        if [ getExtension $file == "jpg" ] || [ getExtension $file == "png" ] || [ getExtension $file == "jpeg" ]; then
            convertToWebp $file
        fi
    fi
done

