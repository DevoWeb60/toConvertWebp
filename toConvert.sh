#!/bin/sh 

# VARIABLES 
folderContainingFilesToConvert=`pwd`
folderToExport=$1
scriptName="toConvert.sh"
exportFolderExist=false
fileExtensionToConvert=test

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
    fileExtensionToConvert=$fileExtension
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
        getExtension $file
        if [ $fileExtensionToConvert == "jpg" ] || [ $fileExtensionToConvert == "png" ] || [ $fileExtensionToConvert == "jpeg" ]; then
            convertToWebp $file
        else 
            echo "Le fichier $file n'est pas une image"
        fi
    fi
done

