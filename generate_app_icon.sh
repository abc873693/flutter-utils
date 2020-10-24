#!/bin/bash

declare -a macOSIconSizes=("16" "32" "64" "128" "256" "512" "1024")

rm -rf macos
rm -rf ios
mkdir macos
mkdir ios

for size in "${macOSIconSizes[@]}"
do
 cp ${1}$size.png macos/app_icon_$size.png
done

echo "copy macOS file done"

cp ${1}1024.png ios/Icon-App-1024x1024@1x.png
cp ${1}20.png ios/Icon-App-20x20@1x.png
cp ${1}40.png ios/Icon-App-20x20@2x.png
cp ${1}60.png ios/Icon-App-20x20@3x.png
cp ${1}29.png ios/Icon-App-29x29@1x.png
cp ${1}58.png ios/Icon-App-29x29@2x.png
cp ${1}87.png ios/Icon-App-29x29@3x.png
cp ${1}40.png ios/Icon-App-40x40@1x.png
cp ${1}80.png ios/Icon-App-40x40@2x.png
cp ${1}120.png ios/Icon-App-40x40@3x.png
cp ${1}120.png ios/Icon-App-60x60@2x.png
cp ${1}180.png ios/Icon-App-60x60@3x.png
cp ${1}76.png ios/Icon-App-76x76@1x.png
cp ${1}152.png ios/Icon-App-76x76@2x.png
cp ${1}167.png ios/Icon-App-83.5x83.5@2x.png

echo "copy iOS file done"