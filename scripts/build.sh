#!/bin/sh


set -e


echo "Generating Variable Font"
fontmake -o variable -m ../sources/designspace/jost.designspace --output-path ../fonts/Jost-VF.ttf

echo "vf cleaning"

vfs=$(ls ../fonts/*.ttf)
for vf in $vfs
do
gftools fix-nonhinting $vf "$vf.fix";
mv "$vf.fix" $vf;
done

rm ../fonts/*backup*.ttf

echo "end vf cleaning"

echo "generating source files"
fontmake -o ufo -i "100" -m ../sources/designspace/jost.designspace
fontmake -o ufo -i "200" -m ../sources/designspace/jost.designspace
fontmake -o ufo -i "300" -m ../sources/designspace/jost.designspace
fontmake -o ufo -i "400" -m ../sources/designspace/jost.designspace
fontmake -o ufo -i "500" -m ../sources/designspace/jost.designspace
fontmake -o ufo -i "600" -m ../sources/designspace/jost.designspace
fontmake -o ufo -i "700" -m ../sources/designspace/jost.designspace
fontmake -o ufo -i "800" -m ../sources/designspace/jost.designspace
fontmake -o ufo -i "900" -m ../sources/designspace/jost.designspace
fontmake -o ufo -i "100i" -m ../sources/designspace/jost.designspace
fontmake -o ufo -i "200i" -m ../sources/designspace/jost.designspace
fontmake -o ufo -i "300i" -m ../sources/designspace/jost.designspace
fontmake -o ufo -i "400i" -m ../sources/designspace/jost.designspace
fontmake -o ufo -i "500i" -m ../sources/designspace/jost.designspace
fontmake -o ufo -i "600i" -m ../sources/designspace/jost.designspace
fontmake -o ufo -i "700i" -m ../sources/designspace/jost.designspace
fontmake -o ufo -i "800i" -m ../sources/designspace/jost.designspace
fontmake -o ufo -i "900i" -m ../sources/designspace/jost.designspace

echo "Generating TrueType Fonts"
fontmake  -o ttf --output-dir ../fonts/ttf2/ -u ../sources/instances/100.ufo ../sources/instances/100i.ufo ../sources/instances/200.ufo ../sources/instances/200i.ufo ../sources/instances/300.ufo ../sources/instances/300i.ufo ../sources/instances/400.ufo ../sources/instances/400i.ufo ../sources/instances/500.ufo ../sources/instances/500i.ufo ../sources/instances/600.ufo ../sources/instances/600i.ufo ../sources/instances/700.ufo ../sources/instances/700i.ufo ../sources/instances/800.ufo ../sources/instances/800i.ufo ../sources/instances/900.ufo ../sources/instances/900i.ufo

mkdir -p ../fonts/ttf

ttfautohint -n ../fonts/ttf2/100.ttf ../fonts/ttf/Jost-100-Hairline.ttf
ttfautohint -n ../fonts/ttf2/100i.ttf ../fonts/ttf/Jost-100-HairlineItalic.ttf
ttfautohint -n ../fonts/ttf2/200.ttf ../fonts/ttf/Jost-200-Thin.ttf
ttfautohint -n ../fonts/ttf2/200i.ttf ../fonts/ttf/Jost-200-ThinItalic.ttf
ttfautohint -n ../fonts/ttf2/300.ttf ../fonts/ttf/Jost-300-Light.ttf
ttfautohint -n ../fonts/ttf2/300i.ttf ../fonts/ttf/Jost-300-LightItalic.ttf
ttfautohint -n ../fonts/ttf2/400.ttf ../fonts/ttf/Jost-400-Book.ttf
ttfautohint -n ../fonts/ttf2/400i.ttf ../fonts/ttf/Jost-400-BookItalic.ttf
ttfautohint -n ../fonts/ttf2/500.ttf ../fonts/ttf/Jost-500-Medium.ttf
ttfautohint -n ../fonts/ttf2/500i.ttf ../fonts/ttf/Jost-500-MediumItalic.ttf
ttfautohint -n ../fonts/ttf2/600.ttf ../fonts/ttf/Jost-600-Semi.ttf
ttfautohint -n ../fonts/ttf2/600i.ttf ../fonts/ttf/Jost-600-SemiItalic.ttf
ttfautohint -n ../fonts/ttf2/700.ttf ../fonts/ttf/Jost-700-Bold.ttf
ttfautohint -n ../fonts/ttf2/700i.ttf ../fonts/ttf/Jost-700-BoldItalic.ttf
ttfautohint -n ../fonts/ttf2/800.ttf ../fonts/ttf/Jost-800-Heavy.ttf
ttfautohint -n ../fonts/ttf2/800i.ttf ../fonts/ttf/Jost-800-HeavyItalic.ttf
ttfautohint -n ../fonts/ttf2/900.ttf ../fonts/ttf/Jost-900-Black.ttf
ttfautohint -n ../fonts/ttf2/900i.ttf ../fonts/ttf/Jost-900-BlackItalic.ttf

gftools fix-hinting ../fonts/ttf/Jost-100-Hairline.ttf
gftools fix-hinting ../fonts/ttf/Jost-100-HairlineItalic.ttf
gftools fix-hinting ../fonts/ttf/Jost-200-Thin.ttf
gftools fix-hinting ../fonts/ttf/Jost-200-ThinItalic.ttf
gftools fix-hinting ../fonts/ttf/Jost-300-Light.ttf
gftools fix-hinting ../fonts/ttf/Jost-300-LightItalic.ttf
gftools fix-hinting ../fonts/ttf/Jost-400-Book.ttf
gftools fix-hinting ../fonts/ttf/Jost-400-BookItalic.ttf
gftools fix-hinting ../fonts/ttf/Jost-500-Medium.ttf
gftools fix-hinting ../fonts/ttf/Jost-500-MediumItalic.ttf
gftools fix-hinting ../fonts/ttf/Jost-600-Semi.ttf
gftools fix-hinting ../fonts/ttf/Jost-600-SemiItalic.ttf
gftools fix-hinting ../fonts/ttf/Jost-700-Bold.ttf
gftools fix-hinting ../fonts/ttf/Jost-700-BoldItalic.ttf
gftools fix-hinting ../fonts/ttf/Jost-800-Heavy.ttf
gftools fix-hinting ../fonts/ttf/Jost-800-HeavyItalic.ttf
gftools fix-hinting ../fonts/ttf/Jost-900-Black.ttf
gftools fix-hinting ../fonts/ttf/Jost-900-BlackItalic.ttf

echo "Cleaning Directory Up"
rm ../fonts/ttf/*.ttf

mv ../fonts/ttf/Jost-100-Hairline.ttf.fix ../fonts/ttf/Jost-100-Hairline.ttf
mv ../fonts/ttf/Jost-100-HairlineItalic.ttf.fix ../fonts/ttf/Jost-100-HairlineItalic.ttf
mv ../fonts/ttf/Jost-200-Thin.ttf.fix ../fonts/ttf/Jost-200-Thin.ttf
mv ../fonts/ttf/Jost-200-ThinItalic.ttf.fix ../fonts/ttf/Jost-200-ThinItalic.ttf
mv ../fonts/ttf/Jost-300-Light.ttf.fix ../fonts/ttf/Jost-300-Light.ttf
mv ../fonts/ttf/Jost-300-LightItalic.ttf.fix ../fonts/ttf/Jost-300-LightItalic.ttf
mv ../fonts/ttf/Jost-400-Book.ttf.fix ../fonts/ttf/Jost-400-Book.ttf
mv ../fonts/ttf/Jost-400-BookItalic.ttf.fix ../fonts/ttf/Jost-400-BookItalic.ttf
mv ../fonts/ttf/Jost-500-Medium.ttf.fix ../fonts/ttf/Jost-500-Medium.ttf
mv ../fonts/ttf/Jost-500-MediumItalic.ttf.fix ../fonts/ttf/Jost-500-MediumItalic.ttf
mv ../fonts/ttf/Jost-600-Semi.ttf.fix ../fonts/ttf/Jost-600-Semi.ttf
mv ../fonts/ttf/Jost-600-SemiItalic.ttf.fix ../fonts/ttf/Jost-600-SemiItalic.ttf
mv ../fonts/ttf/Jost-700-Bold.ttf.fix ../fonts/ttf/Jost-700-Bold.ttf
mv ../fonts/ttf/Jost-700-BoldItalic.ttf.fix ../fonts/ttf/Jost-700-BoldItalic.ttf
mv ../fonts/ttf/Jost-800-Heavy.ttf.fix ../fonts/ttf/Jost-800-Heavy.ttf
mv ../fonts/ttf/Jost-800-HeavyItalic.ttf.fix ../fonts/ttf/Jost-800-HeavyItalic.ttf
mv ../fonts/ttf/Jost-900-Black.ttf.fix ../fonts/ttf/Jost-900-Black.ttf
mv ../fonts/ttf/Jost-900-BlackItalic.ttf.fix ../fonts/ttf/Jost-900-BlackItalic.ttf

rm ../fonts/ttf2/*.ttf
rmdir ../fonts/ttf2

echo "Generating OpenType Fonts"
fontmake  -o otf --output-dir ../fonts/otf/ -u ../sources/instances/100.ufo ../sources/instances/100i.ufo ../sources/instances/200.ufo ../sources/instances/200i.ufo ../sources/instances/300.ufo ../sources/instances/300i.ufo ../sources/instances/400.ufo ../sources/instances/400i.ufo ../sources/instances/500.ufo ../sources/instances/500i.ufo ../sources/instances/600.ufo ../sources/instances/600i.ufo ../sources/instances/700.ufo ../sources/instances/700i.ufo ../sources/instances/800.ufo ../sources/instances/800i.ufo ../sources/instances/900.ufo ../sources/instances/900i.ufo

echo "Hot Fixes"
mv ../fonts/otf/100.otf ../fonts/otf/Jost-100-Hairline.otf
mv ../fonts/otf/100i.otf ../fonts/otf/Jost-100-HairlineItalic.otf
mv ../fonts/otf/200.otf ../fonts/otf/Jost-200-Thin.otf
mv ../fonts/otf/200i.otf ../fonts/otf/Jost-200-ThinItalic.otf
mv ../fonts/otf/300.otf ../fonts/otf/Jost-300-Light.otf
mv ../fonts/otf/300i.otf ../fonts/otf/Jost-300-LightItalic.otf
mv ../fonts/otf/400.otf ../fonts/otf/Jost-400-Book.otf
mv ../fonts/otf/400i.otf ../fonts/otf/Jost-400-BookItalic.otf
mv ../fonts/otf/500.otf ../fonts/otf/Jost-500-Medium.otf
mv ../fonts/otf/500i.otf ../fonts/otf/Jost-500-MediumItalic.otf
mv ../fonts/otf/600.otf ../fonts/otf/Jost-600-Semi.otf
mv ../fonts/otf/600i.otf ../fonts/otf/Jost-600-SemiItalic.otf
mv ../fonts/otf/700.otf ../fonts/otf/Jost-700-Bold.otf
mv ../fonts/otf/700i.otf ../fonts/otf/Jost-700-BoldItalic.otf
mv ../fonts/otf/800.otf ../fonts/otf/Jost-800-Hevy.otf
mv ../fonts/otf/800i.otf ../fonts/otf/Jost-800-HevyItalic.otf
mv ../fonts/otf/900.otf ../fonts/otf/Jost-900-Black.otf
mv ../fonts/otf/900i.otf ../fonts/otf/Jost-900-BlackItalic.otf

echo "Cleaning Up"
rm -rf ../sources/instances
