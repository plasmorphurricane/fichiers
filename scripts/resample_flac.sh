#!/bin/bash

# Lang. : FR

# Check if a dir is defined 
if [ -z "$1" ]; then
  echo "Utilisation : $0 <dossier>"
  exit 1
fi

# Dir with FLAC files
DIR="$1"

# Create new Dir for new files
OUTPUT_DIR="$DIR/resampled_flac"
mkdir -p "$OUTPUT_DIR"

# Lopp for FLAC files in Dir
for file in "$DIR"/*.flac; do
  # Check if file exist 
  if [ -f "$file" ]; then
    # Get file's name
    filename=$(basename "$file" .flac)
    
    # ffmpeg with 44100 Hz
    echo "Resampling du fichier : $file"
    ffmpeg -i "$file" -ar 44100 "$OUTPUT_DIR/${filename}_resampled.flac"
    
    echo "Fichier resamplé et rangé dans : ${OUTPUT_DIR}/${filename}_resampled.flac"
  else
    echo "Aucun fichier FLAC trouvé dans le dossier."
  fi
done

