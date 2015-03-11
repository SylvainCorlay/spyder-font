#!/bin/sh

# Run from the svg directory
for f in ../png_16x16/*.png; do
    rm "$f";
done
for f in ../png_32x32/*.png; do
    rm "$f";
done
#for f in ../svg_plain/*.svg; do
#    rm "$f";
#done

for f in *.svg; do
    convert -resize 16x16 ./"$f" ../png_16x16/"${f%.svg}.png";
    convert -resize 32x32 ./"$f" ../png_32x32/"${f%.svg}.png";
    #cp "$f" ../svg_plain/;
done

#for f in ../svg_plain/*.svg; do
#    inkscape -f "$f" --verb=EditSelectAll --verb=SelectionUnGroup --verb=StrokeToPath --verb=FileVacuum --verb=FileSave --verb=FileClose;
    #--export-plain-svg=../svg_plain/"$f";
#done
 
