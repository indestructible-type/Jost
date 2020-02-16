#!/bin/sh


set -e


echo "Making Alternative Source Files"
cp -a ../sources ../sources-GF

echo "Fixing Naming Conventions"

#Variable
sed -i 's/Jost\*/Jost/g' ../sources-GF/jost.designspace
sed -i 's/Thin/ExtraLight/g' ../sources-GF/jost.designspace
sed -i 's/Hairline/Thin/g' ../sources-GF/jost.designspace
sed -i 's/Book/Regular/g' ../sources-GF/jost.designspace
sed -i 's/Regular Italic/Italic/g' ../sources-GF/jost.designspace
sed -i 's/Semi/SemiBold/g' ../sources-GF/jost.designspace
sed -i 's/Heavy/ExtraBold/g' ../sources-GF/jost.designspace
sed -i 's/maximum="2" default="0" name="Italic" tag="ital">/maximum="1" default="0" name="Italic" tag="ital">/g' ../sources-GF/jost.designspace
sed -i 's/dimension name="Italic" xvalue="2"/dimension name="Italic" xvalue="1"/g' ../sources-GF/jost.designspace
sed -i 's/italicVF.ufo/italicGF.ufo/g' ../sources-GF/jost.designspace


#100
sed -i 's/Jost\*/Jost/g' ../sources-GF/UFO/100/100.ufo/fontinfo.plist
sed -i 's/Jost 100 Hairline/Jost Hairline/g' ../sources-GF/UFO/100/100.ufo/fontinfo.plist
sed -i 's/Hairline/Thin/g' ../sources-GF/UFO/100/100.ufo/fontinfo.plist

sed -i 's/Jost\*/Jost/g' ../sources-GF/UFO/100/100-italic.ufo/fontinfo.plist
sed -i 's/Jost 100 Hairline/Jost Hairline/g' ../sources-GF/UFO/100/100-italic.ufo/fontinfo.plist
sed -i 's/Hairline/Thin/g' ../sources-GF/UFO/100/100-italic.ufo/fontinfo.plist

#200
sed -i 's/Jost\*/Jost/g' ../sources-GF/UFO/200/200.ufo/fontinfo.plist
sed -i 's/Jost 200 Thin/Jost Thin/g' ../sources-GF/UFO/200/200.ufo/fontinfo.plist
sed -i 's/Thin/ExtraLight/g' ../sources-GF/UFO/200/200.ufo/fontinfo.plist

sed -i 's/Jost\*/Jost/g' ../sources-GF/UFO/200/200-italic.ufo/fontinfo.plist
sed -i 's/Jost 200 Thin/Jost Thin/g' ../sources-GF/UFO/200/200-italic.ufo/fontinfo.plist
sed -i 's/Thin/ExtraLight/g' ../sources-GF/UFO/200/200-italic.ufo/fontinfo.plist

#300
sed -i 's/Jost\*/Jost/g' ../sources-GF/UFO/300/300.ufo/fontinfo.plist
sed -i 's/Jost 300 Light/Jost Light/g' ../sources-GF/UFO/300/300.ufo/fontinfo.plist

sed -i 's/Jost\*/Jost/g' ../sources-GF/UFO/300/300-italic.ufo/fontinfo.plist
sed -i 's/Jost 300 Light/Jost Light/g' ../sources-GF/UFO/300/300-italic.ufo/fontinfo.plist

#400
sed -i 's/Jost\*/Jost/g' ../sources-GF/UFO/400/400.ufo/fontinfo.plist
sed -i 's/Jost 400 Book/Jost Book/g' ../sources-GF/UFO/400/400.ufo/fontinfo.plist
sed -i 's/Book/Regular/g' ../sources-GF/UFO/400/400.ufo/fontinfo.plist

sed -i 's/Jost\*/Jost/g' ../sources-GF/UFO/400/400-italic.ufo/fontinfo.plist
sed -i 's/Jost 400 Book/Jost Book/g' ../sources-GF/UFO/400/400-italic.ufo/fontinfo.plist
sed -i 's/Book/Italic/g' ../sources-GF/UFO/400/400-italic.ufo/fontinfo.plist
sed -i 's/ItalicItalic/Italic/g' ../sources-GF/UFO/400/400-italic.ufo/fontinfo.plist
sed -i 's/Italic Italic/Italic/g' ../sources-GF/UFO/400/400-italic.ufo/fontinfo.plist

#500
sed -i 's/Jost\*/Jost/g' ../sources-GF/UFO/500/500.ufo/fontinfo.plist
sed -i 's/Jost 500 Medium/Jost Medium/g' ../sources-GF/UFO/500/500.ufo/fontinfo.plist

sed -i 's/Jost\*/Jost/g' ../sources-GF/UFO/500/500-italic.ufo/fontinfo.plist
sed -i 's/Jost 500 Medium/Jost Medium/g' ../sources-GF/UFO/500/500-italic.ufo/fontinfo.plist

#600
sed -i 's/Jost\*/Jost/g' ../sources-GF/UFO/600/600.ufo/fontinfo.plist
sed -i 's/Jost 600 Semi/Jost Semi/g' ../sources-GF/UFO/600/600.ufo/fontinfo.plist
sed -i 's/Semi/SemiBold/g' ../sources-GF/UFO/600/600.ufo/fontinfo.plist
sed -i 's/SemiBoldBold/SemiBold/g' ../sources-GF/UFO/600/600.ufo/fontinfo.plist

sed -i 's/Jost\*/Jost/g' ../sources-GF/UFO/600/600-italic.ufo/fontinfo.plist
sed -i 's/Jost 600 Semi/Jost Semi/g' ../sources-GF/UFO/600/600-italic.ufo/fontinfo.plist
sed -i 's/Semi/SemiBold/g' ../sources-GF/UFO/600/600-italic.ufo/fontinfo.plist
sed -i 's/SemiBoldBold/SemiBold/g' ../sources-GF/UFO/600/600.ufo/fontinfo.plist

#700
sed -i 's/Jost\*/Jost/g' ../sources-GF/UFO/700/700.ufo/fontinfo.plist
sed -i 's/Jost 700 Bold/Jost Bold/g' ../sources-GF/UFO/700/700.ufo/fontinfo.plist

sed -i 's/Jost\*/Jost/g' ../sources-GF/UFO/700/700-italic.ufo/fontinfo.plist
sed -i 's/Jost 700 Bold/Jost Bold/g' ../sources-GF/UFO/700/700-italic.ufo/fontinfo.plist

#800
sed -i 's/Jost\*/Jost/g' ../sources-GF/UFO/800/800.ufo/fontinfo.plist
sed -i 's/Jost 800 Heavy/Jost Heavy/g' ../sources-GF/UFO/800/800.ufo/fontinfo.plist
sed -i 's/Heavy/ExtraBold/g' ../sources-GF/UFO/800/800.ufo/fontinfo.plist

sed -i 's/Jost\*/Jost/g' ../sources-GF/UFO/800/800-italic.ufo/fontinfo.plist
sed -i 's/Jost 800 Heavy/Jost Heavy/g' ../sources-GF/UFO/800/800-italic.ufo/fontinfo.plist
sed -i 's/Heavy/ExtraBold/g' ../sources-GF/UFO/800/800-italic.ufo/fontinfo.plist

#900
sed -i 's/Jost\*/Jost/g' ../sources-GF/UFO/900/900.ufo/fontinfo.plist
sed -i 's/Jost 900 Black/Jost Black/g' ../sources-GF/UFO/900/900.ufo/fontinfo.plist

sed -i 's/Jost\*/Jost/g' ../sources-GF/UFO/900/900-italic.ufo/fontinfo.plist
sed -i 's/Jost 900 Black/Jost Black/g' ../sources-GF/UFO/900/900-italic.ufo/fontinfo.plist


echo "Generating Variable Font"
fontmake -o variable -m ../sources-GF/jost.designspace --output-path ../fonts/Jost[ital,wght].ttf

echo "vf cleaning"

vfs=$(ls ../fonts/*.ttf)
for vf in $vfs
do
gftools fix-dsig -f $vf;
gftools fix-nonhinting $vf "$vf.fix";
mv "$vf.fix" $vf;
done

rm ../fonts/*backup*.ttf

echo "end vf cleaning"

echo "Generating TrueType Fonts"
fontmake  -o ttf --output-dir ../fonts/ttf2/ -u ../sources-GF/UFO/100/100.ufo ../sources-GF/UFO/100/100-italic.ufo ../sources-GF/UFO/200/200.ufo ../sources-GF/UFO/200/200-italic.ufo ../sources-GF/UFO/300/300.ufo ../sources-GF/UFO/300/300-italic.ufo ../sources-GF/UFO/400/400.ufo ../sources-GF/UFO/400/400-italic.ufo ../sources-GF/UFO/500/500.ufo ../sources-GF/UFO/500/500-italic.ufo ../sources-GF/UFO/600/600.ufo ../sources-GF/UFO/600/600-italic.ufo ../sources-GF/UFO/700/700.ufo ../sources-GF/UFO/700/700-italic.ufo ../sources-GF/UFO/800/800.ufo ../sources-GF/UFO/800/800-italic.ufo ../sources-GF/UFO/900/900.ufo ../sources-GF/UFO/900/900-italic.ufo

echo "Hot Fixes"
gftools fix-dsig -f ../fonts/ttf2/*.ttf

mkdir -p ../fonts/static

ttfautohint -n ../fonts/ttf2/100.ttf ../fonts/static/Jost-Thin.ttf
ttfautohint -n ../fonts/ttf2/100-italic.ttf ../fonts/static/Jost-ThinItalic.ttf
ttfautohint -n ../fonts/ttf2/200.ttf ../fonts/static/Jost-ExtraLight.ttf
ttfautohint -n ../fonts/ttf2/200-italic.ttf ../fonts/static/Jost-ExtraLightItalic.ttf
ttfautohint -n ../fonts/ttf2/300.ttf ../fonts/static/Jost-Light.ttf
ttfautohint -n ../fonts/ttf2/300-italic.ttf ../fonts/static/Jost-LightItalic.ttf
ttfautohint -n ../fonts/ttf2/400.ttf ../fonts/static/Jost-Regular.ttf
ttfautohint -n ../fonts/ttf2/400-italic.ttf ../fonts/static/Jost-RegularItalic.ttf
ttfautohint -n ../fonts/ttf2/500.ttf ../fonts/static/Jost-Medium.ttf
ttfautohint -n ../fonts/ttf2/500-italic.ttf ../fonts/static/Jost-MediumItalic.ttf
ttfautohint -n ../fonts/ttf2/600.ttf ../fonts/static/Jost-SemiBold.ttf
ttfautohint -n ../fonts/ttf2/600-italic.ttf ../fonts/static/Jost-SemiBoldItalic.ttf
ttfautohint -n ../fonts/ttf2/700.ttf ../fonts/static/Jost-Bold.ttf
ttfautohint -n ../fonts/ttf2/700-italic.ttf ../fonts/static/Jost-BoldItalic.ttf
ttfautohint -n ../fonts/ttf2/800.ttf ../fonts/static/Jost-ExtraBold.ttf
ttfautohint -n ../fonts/ttf2/800-italic.ttf ../fonts/static/Jost-ExtraBoldItalic.ttf
ttfautohint -n ../fonts/ttf2/900.ttf ../fonts/static/Jost-Black.ttf
ttfautohint -n ../fonts/ttf2/900-italic.ttf ../fonts/static/Jost-BlackItalic.ttf

gftools fix-hinting ../fonts/static/Jost-Thin.ttf
gftools fix-hinting ../fonts/static/Jost-ThinItalic.ttf
gftools fix-hinting ../fonts/static/Jost-ExtraLight.ttf
gftools fix-hinting ../fonts/static/Jost-ExtraLightItalic.ttf
gftools fix-hinting ../fonts/static/Jost-Light.ttf
gftools fix-hinting ../fonts/static/Jost-LightItalic.ttf
gftools fix-hinting ../fonts/static/Jost-Regular.ttf
gftools fix-hinting ../fonts/static/Jost-RegularItalic.ttf
gftools fix-hinting ../fonts/static/Jost-Medium.ttf
gftools fix-hinting ../fonts/static/Jost-MediumItalic.ttf
gftools fix-hinting ../fonts/static/Jost-SemiBold.ttf
gftools fix-hinting ../fonts/static/Jost-SemiBoldItalic.ttf
gftools fix-hinting ../fonts/static/Jost-Bold.ttf
gftools fix-hinting ../fonts/static/Jost-BoldItalic.ttf
gftools fix-hinting ../fonts/static/Jost-ExtraBold.ttf
gftools fix-hinting ../fonts/static/Jost-ExtraBoldItalic.ttf
gftools fix-hinting ../fonts/static/Jost-Black.ttf
gftools fix-hinting ../fonts/static/Jost-BlackItalic.ttf

echo "Cleaning Directory Up"
rm ../fonts/static/*.ttf

mv ../fonts/static/Jost-Thin.ttf.fix ../fonts/static/Jost-Thin.ttf
mv ../fonts/static/Jost-ThinItalic.ttf.fix ../fonts/static/Jost-ThinItalic.ttf
mv ../fonts/static/Jost-ExtraLight.ttf.fix ../fonts/static/Jost-ExtraLight.ttf
mv ../fonts/static/Jost-ExtraLightItalic.ttf.fix ../fonts/static/Jost-ExtraLightItalic.ttf
mv ../fonts/static/Jost-Light.ttf.fix ../fonts/static/Jost-Light.ttf
mv ../fonts/static/Jost-LightItalic.ttf.fix ../fonts/static/Jost-LightItalic.ttf
mv ../fonts/static/Jost-Regular.ttf.fix ../fonts/static/Jost-Regular.ttf
mv ../fonts/static/Jost-RegularItalic.ttf.fix ../fonts/static/Jost-Italic.ttf
mv ../fonts/static/Jost-Medium.ttf.fix ../fonts/static/Jost-Medium.ttf
mv ../fonts/static/Jost-MediumItalic.ttf.fix ../fonts/static/Jost-MediumItalic.ttf
mv ../fonts/static/Jost-SemiBold.ttf.fix ../fonts/static/Jost-SemiBold.ttf
mv ../fonts/static/Jost-SemiBoldItalic.ttf.fix ../fonts/static/Jost-SemiBoldItalic.ttf
mv ../fonts/static/Jost-Bold.ttf.fix ../fonts/static/Jost-Bold.ttf
mv ../fonts/static/Jost-BoldItalic.ttf.fix ../fonts/static/Jost-BoldItalic.ttf
mv ../fonts/static/Jost-ExtraBold.ttf.fix ../fonts/static/Jost-ExtraBold.ttf
mv ../fonts/static/Jost-ExtraBoldItalic.ttf.fix ../fonts/static/Jost-ExtraBoldItalic.ttf
mv ../fonts/static/Jost-Black.ttf.fix ../fonts/static/Jost-Black.ttf
mv ../fonts/static/Jost-BlackItalic.ttf.fix ../fonts/static/Jost-BlackItalic.ttf

rm ../fonts/ttf2/*.ttf
rmdir ../fonts/ttf2

echo "Cleaning Up"
rm -rf ../sources-GF

echo "All Done!"
