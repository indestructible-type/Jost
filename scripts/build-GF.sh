#!/bin/sh


set -e


echo "Making Alternative Source Files"
cp -a ../sources ../sources-GF

sed -i 's/rules/kilroy/g' ../sources-GF/designspace/jost.designspace
fontmake -o ufo -i "100i" -m ../sources-GF/designspace/jost.designspace
fontmake -o ufo -i "400i" -m ../sources-GF/designspace/jost.designspace
fontmake -o ufo -i "900i" -m ../sources-GF/designspace/jost.designspace
sed -i 's/kilroy/rules/g' ../sources-GF/designspace/jost.designspace
rm -rf ../sources-GF/UFO/100i.ufo
rm -rf ../sources-GF/UFO/400i.ufo
rm -rf ../sources-GF/UFO/900i.ufo
mv ../sources-GF/instances/100i.ufo ../sources-GF/UFO/100i.ufo
mv ../sources-GF/instances/400i.ufo ../sources-GF/UFO/400i.ufo
mv ../sources-GF/instances/900i.ufo ../sources-GF/UFO/900i.ufo

echo "Fixing Naming Conventions"

#Variable
sed -i 's/Jost\*/Jost/g' ../sources-GF/UFO/400.ufo/fontinfo.plist
sed -i 's/Book/Regular/g' ../sources-GF/UFO/400.ufo/fontinfo.plist
sed -i 's/Jost\*/Jost/g' ../sources-GF/UFO/400i.ufo/fontinfo.plist
sed -i 's/Book/Regular/g' ../sources-GF/UFO/400i.ufo/fontinfo.plist
sed -i 's/Regular Italic/Italic/g' ../sources-GF/UFO/400i.ufo/fontinfo.plist
sed -i 's/RegularItalic/Italic/g' ../sources-GF/UFO/400i.ufo/fontinfo.plist

sed -i 's/Jost\*/Jost/g' ../sources-GF/designspace/jost.designspace
sed -i 's/Thin/ExtraLight/g' ../sources-GF/designspace/jost.designspace
sed -i 's/Hairline/Thin/g' ../sources-GF/designspace/jost.designspace
sed -i 's/Book/Regular/g' ../sources-GF/designspace/jost.designspace
sed -i 's/Regular Italic/Italic/g' ../sources-GF/designspace/jost.designspace
sed -i 's/RegularItalic/Italic/g' ../sources-GF/designspace/jost.designspace
sed -i 's/Semi/SemiBold/g' ../sources-GF/designspace/jost.designspace
sed -i 's/Heavy/ExtraBold/g' ../sources-GF/designspace/jost.designspace
sed -i 's/maximum="2" default="0" name="Italic" tag="ital">/maximum="1" default="0" name="Italic" tag="ital">/g' ../sources-GF/designspace/jost.designspace
sed -i 's/dimension name="Italic" xvalue="2"/dimension name="Italic" xvalue="1"/g' ../sources-GF/designspace/jost.designspace

echo "generating source files"

fontmake -o ufo -i "100" -m ../sources-GF/designspace/jost.designspace
fontmake -o ufo -i "200" -m ../sources-GF/designspace/jost.designspace
fontmake -o ufo -i "300" -m ../sources-GF/designspace/jost.designspace
fontmake -o ufo -i "400" -m ../sources-GF/designspace/jost.designspace
fontmake -o ufo -i "500" -m ../sources-GF/designspace/jost.designspace
fontmake -o ufo -i "600" -m ../sources-GF/designspace/jost.designspace
fontmake -o ufo -i "700" -m ../sources-GF/designspace/jost.designspace
fontmake -o ufo -i "800" -m ../sources-GF/designspace/jost.designspace
fontmake -o ufo -i "900" -m ../sources-GF/designspace/jost.designspace
fontmake -o ufo -i "100i" -m ../sources-GF/designspace/jost.designspace
fontmake -o ufo -i "200i" -m ../sources-GF/designspace/jost.designspace
fontmake -o ufo -i "300i" -m ../sources-GF/designspace/jost.designspace
fontmake -o ufo -i "400i" -m ../sources-GF/designspace/jost.designspace
fontmake -o ufo -i "500i" -m ../sources-GF/designspace/jost.designspace
fontmake -o ufo -i "600i" -m ../sources-GF/designspace/jost.designspace
fontmake -o ufo -i "700i" -m ../sources-GF/designspace/jost.designspace
fontmake -o ufo -i "800i" -m ../sources-GF/designspace/jost.designspace
fontmake -o ufo -i "900i" -m ../sources-GF/designspace/jost.designspace

echo "Generating TrueType Fonts"
fontmake  -o ttf --output-dir ../fonts/ttf2/ -u ../sources-GF/instances/100.ufo ../sources-GF/instances/100i.ufo ../sources-GF/instances/200.ufo ../sources-GF/instances/200i.ufo ../sources-GF/instances/300.ufo ../sources-GF/instances/300i.ufo ../sources-GF/instances/400.ufo ../sources-GF/instances/400i.ufo ../sources-GF/instances/500.ufo ../sources-GF/instances/500i.ufo ../sources-GF/instances/600.ufo ../sources-GF/instances/600i.ufo ../sources-GF/instances/700.ufo ../sources-GF/instances/700i.ufo ../sources-GF/instances/800.ufo ../sources-GF/instances/800i.ufo ../sources-GF/instances/900.ufo ../sources-GF/instances/900i.ufo

echo "Hot Fixes"
gftools fix-dsig -f ../fonts/ttf2/*.ttf

mkdir -p ../fonts/static

ttfautohint -n ../fonts/ttf2/100.ttf ../fonts/static/Jost-100-Hairline.ttf
ttfautohint -n ../fonts/ttf2/100i.ttf ../fonts/static/Jost-100-HairlineItalic.ttf
ttfautohint -n ../fonts/ttf2/200.ttf ../fonts/static/Jost-200-Thin.ttf
ttfautohint -n ../fonts/ttf2/200i.ttf ../fonts/static/Jost-200-ThinItalic.ttf
ttfautohint -n ../fonts/ttf2/300.ttf ../fonts/static/Jost-300-Light.ttf
ttfautohint -n ../fonts/ttf2/300i.ttf ../fonts/static/Jost-300-LightItalic.ttf
ttfautohint -n ../fonts/ttf2/400.ttf ../fonts/static/Jost-400-Book.ttf
ttfautohint -n ../fonts/ttf2/400i.ttf ../fonts/static/Jost-400-BookItalic.ttf
ttfautohint -n ../fonts/ttf2/500.ttf ../fonts/static/Jost-500-Medium.ttf
ttfautohint -n ../fonts/ttf2/500i.ttf ../fonts/static/Jost-500-MediumItalic.ttf
ttfautohint -n ../fonts/ttf2/600.ttf ../fonts/static/Jost-600-Semi.ttf
ttfautohint -n ../fonts/ttf2/600i.ttf ../fonts/static/Jost-600-SemiItalic.ttf
ttfautohint -n ../fonts/ttf2/700.ttf ../fonts/static/Jost-700-Bold.ttf
ttfautohint -n ../fonts/ttf2/700i.ttf ../fonts/static/Jost-700-BoldItalic.ttf
ttfautohint -n ../fonts/ttf2/800.ttf ../fonts/static/Jost-800-Heavy.ttf
ttfautohint -n ../fonts/ttf2/800i.ttf ../fonts/static/Jost-800-HeavyItalic.ttf
ttfautohint -n ../fonts/ttf2/900.ttf ../fonts/static/Jost-900-Black.ttf
ttfautohint -n ../fonts/ttf2/900i.ttf ../fonts/static/Jost-900-BlackItalic.ttf

gftools fix-hinting ../fonts/static/Jost-100-Hairline.ttf
gftools fix-hinting ../fonts/static/Jost-100-HairlineItalic.ttf
gftools fix-hinting ../fonts/static/Jost-200-Thin.ttf
gftools fix-hinting ../fonts/static/Jost-200-ThinItalic.ttf
gftools fix-hinting ../fonts/static/Jost-300-Light.ttf
gftools fix-hinting ../fonts/static/Jost-300-LightItalic.ttf
gftools fix-hinting ../fonts/static/Jost-400-Book.ttf
gftools fix-hinting ../fonts/static/Jost-400-BookItalic.ttf
gftools fix-hinting ../fonts/static/Jost-500-Medium.ttf
gftools fix-hinting ../fonts/static/Jost-500-MediumItalic.ttf
gftools fix-hinting ../fonts/static/Jost-600-Semi.ttf
gftools fix-hinting ../fonts/static/Jost-600-SemiItalic.ttf
gftools fix-hinting ../fonts/static/Jost-700-Bold.ttf
gftools fix-hinting ../fonts/static/Jost-700-BoldItalic.ttf
gftools fix-hinting ../fonts/static/Jost-800-Heavy.ttf
gftools fix-hinting ../fonts/static/Jost-800-HeavyItalic.ttf
gftools fix-hinting ../fonts/static/Jost-900-Black.ttf
gftools fix-hinting ../fonts/static/Jost-900-BlackItalic.ttf

echo "Cleaning Directory Up"
rm ../fonts/static/*.ttf

mv ../fonts/static/Jost-100-Hairline.ttf.fix ../fonts/static/Jost-Thin.ttf
mv ../fonts/static/Jost-100-HairlineItalic.ttf.fix ../fonts/static/Jost-ThinItalic.ttf
mv ../fonts/static/Jost-200-Thin.ttf.fix ../fonts/static/Jost-ExtraLight.ttf
mv ../fonts/static/Jost-200-ThinItalic.ttf.fix ../fonts/static/Jost-ExtraLightItalic.ttf
mv ../fonts/static/Jost-300-Light.ttf.fix ../fonts/static/Jost-Light.ttf
mv ../fonts/static/Jost-300-LightItalic.ttf.fix ../fonts/static/Jost-LightItalic.ttf
mv ../fonts/static/Jost-400-Book.ttf.fix ../fonts/static/Jost-Regular.ttf
mv ../fonts/static/Jost-400-BookItalic.ttf.fix ../fonts/static/Jost-Italic.ttf
mv ../fonts/static/Jost-500-Medium.ttf.fix ../fonts/static/Jost-Medium.ttf
mv ../fonts/static/Jost-500-MediumItalic.ttf.fix ../fonts/static/Jost-MediumItalic.ttf
mv ../fonts/static/Jost-600-Semi.ttf.fix ../fonts/static/Jost-SemiBold.ttf
mv ../fonts/static/Jost-600-SemiItalic.ttf.fix ../fonts/static/Jost-SemiBoldItalic.ttf
mv ../fonts/static/Jost-700-Bold.ttf.fix ../fonts/static/Jost-Bold.ttf
mv ../fonts/static/Jost-700-BoldItalic.ttf.fix ../fonts/static/Jost-BoldItalic.ttf
mv ../fonts/static/Jost-800-Heavy.ttf.fix ../fonts/static/Jost-ExtraBold.ttf
mv ../fonts/static/Jost-800-HeavyItalic.ttf.fix ../fonts/static/Jost-ExtraBoldItalic.ttf
mv ../fonts/static/Jost-900-Black.ttf.fix ../fonts/static/Jost-Black.ttf
mv ../fonts/static/Jost-900-BlackItalic.ttf.fix ../fonts/static/Jost-BlackItalic.ttf

rm ../fonts/ttf2/*.ttf
rmdir ../fonts/ttf2

fontmake -o ufo -i "100i" -m ../sources-GF/designspace/jost.designspace
fontmake -o ufo -i "400i" -m ../sources-GF/designspace/jost.designspace
fontmake -o ufo -i "900i" -m ../sources-GF/designspace/jost.designspace
rm -rf ../sources-GF/UFO/100i.ufo
rm -rf ../sources-GF/UFO/400i.ufo
rm -rf ../sources-GF/UFO/900i.ufo
mv ../sources-GF/instances/100i.ufo ../sources-GF/UFO/100i.ufo
mv ../sources-GF/instances/400i.ufo ../sources-GF/UFO/400i.ufo
mv ../sources-GF/instances/900i.ufo ../sources-GF/UFO/900i.ufo

echo "Generating Variable Font"
fontmake -o variable -m ../sources-GF/designspace/jostGF.designspace --output-path ../fonts/Jost[wght].ttf
fontmake -o variable -m ../sources-GF/designspace/jostGF-Italic.designspace --output-path ../fonts/Jost-Italic[wght].ttf

echo "vf cleaning"

vfs=$(ls ../fonts/*.ttf)
for vf in $vfs
do
gftools fix-dsig -f $vf;
gftools fix-nonhinting $vf "$vf.fix";
mv "$vf.fix" $vf;
gftools fix-vf-meta $vf;
mv "$vf.fix" $vf;
done

rm ../fonts/*backup*.ttf

echo "end vf cleaning"

echo "Cleaning Up"
rm -rf ../sources-GF

echo "All Done!"
