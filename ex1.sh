#!/bin/bash


# Check if arguments num is valid
if [ $# -lt 2 ];
then
    echo "num of orgument is not valid"
    exit 1
fi

directory_path="$1"

#Check if the directory exists
if [ ! -d "$directory_path" ];
then
    echo "ERROR: directory not exit"
    exit 1
fi

#Create a dounloads directory
downloads_dir="$directory_path/downloads"
mkdir -p "$downloads_dir"

shift

# Loop through the remaining arguments (image URLs)
for image_url in "$@";
do
	echo "passif"
        # Extract the filename from the URL
        filename=$(basename "$image_url")

        # Construct the full path for the downloaded image
        full_path="$downloads_dir/$filename"

        # Download the image using wget
        wget --no-check-certificate -P "$downloads_dir" "$image_url"

        # Check if the download was successful
        if [ $? -eq 0 ];
	then
            echo "Image downloaded successfully to $full_path"
        else
            echo "Failed to download the image from $image_url"
        fi
done

#zip folder

zip -r "$(date +"%Y-%m-%d_%H-%M-%S").zip" "$directory_path"


