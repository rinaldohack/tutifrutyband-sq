#!/bin/bash

# Cek apakah argumen sudah diberikan
if [ $# -eq 0 ]; then
    echo "Usage: sh gitsync.sh \"commit message\""
    exit 1
fi

# Menambahkan semua file dalam direktori
git add .

# Melakukan commit dengan pesan dari argumen
git commit -m "$1"

# Melakukan push ke origin master
git push origin master
