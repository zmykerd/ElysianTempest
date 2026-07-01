#!/bin/bash

echo "=== INIZIO COMPRESSIONE AUDIO ESTREMA ==="
mkdir -p temp_ottimizzati
for file in *.ogg; do
    [ "$file" = "comprimi_audio.sh" ] && continue
    
    echo "Comprimo: $file..."
    
    ffmpeg -y -i "$file" -ac 1 -b:a 32k -map_metadata 0 "temp_ottimizzati/$file" 2>/dev/null
done
mv temp_ottimizzati/*.ogg .
rmdir temp_ottimizzati
echo "=== COMPRESSIONE AUDIO COMPLETATA! ==="
