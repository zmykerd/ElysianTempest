#!/bin/bash

echo "=== INIZIO COMPRESSIONE ESTREMA ==="
echo "Fase 1: Ottimizzazione palette colori (pngquant)..."
pngquant --force --ext .png --speed 1 --quality=80-95 *.png
echo "Fase 2: Compressione estrema dei dati (optipng)..."
optipng -o7 *.png
echo "=== COMPRESSIONE COMPLETATA CON SUCCESSO! ==="
