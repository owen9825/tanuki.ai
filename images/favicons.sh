#!/bin/bash
echo This script shall create favicons based on eye.svg
# Create the bitmaps for the ICO
inkscape -z -e favicon16.png -w 16 -h 16 eye.svg
inkscape -z -e favicon24.png -w 24 -h 24 eye.svg
inkscape -z -e favicon32.png -w 32 -h 32 eye.svg
inkscape -z -e favicon64.png -w 64 -h 64 eye.svg

# Create the PNG version to serve to modern browsers
inkscape -z -e favicon128.png -w 128 -h 128 eye.svg

# Optimize the size of our PNG (~40% size reduction for me)
optipng favicon*.png

# Create our ICO (4-bit color to save bandwidth)
convert favicon16.png favicon24.png favicon32.png favicon64.png -background transparent -colors 16 -depth 4 favicon.ico