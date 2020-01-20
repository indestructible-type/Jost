#!/bin/sh


set -e


echo "Generating Variable Font"
fontmake -o variable -m ../sources/jost.designspace --output-path ../fonts/Jost-VF.ttf

echo "Generating TrueType Fonts"
fontmake  -o ttf --output-dir ../fonts/ttf2/ -u ../sources/UFO/100/100.ufo ../sources/UFO/100/100-italic.ufo ../sources/UFO/200/200.ufo ../sources/UFO/200/200-italic.ufo ../sources/UFO/300/300.ufo ../sources/UFO/300/300-italic.ufo ../sources/UFO/400/400.ufo ../sources/UFO/400/400-italic.ufo ../sources/UFO/500/500.ufo ../sources/UFO/500/500-italic.ufo ../sources/UFO/600/600.ufo ../sources/UFO/600/600-italic.ufo ../sources/UFO/700/700.ufo ../sources/UFO/700/700-italic.ufo ../sources/UFO/800/800.ufo ../sources/UFO/800/800-italic.ufo ../sources/UFO/900/900.ufo ../sources/UFO/900/900-italic.ufo

echo "Hot Fixes"
gftools fix-dsig -f ../fonts/ttf2/*.ttf

mkdir -p ../fonts/ttf

ttfautohint -n ../fonts/ttf2/100.ttf ../fonts/ttf/Jost-100-Hairline.ttf
ttfautohint -n ../fonts/ttf2/100-italic.ttf ../fonts/ttf/Jost-100-HairlineItalic.ttf
ttfautohint -n ../fonts/ttf2/200.ttf ../fonts/ttf/Jost-200-Thin.ttf
ttfautohint -n ../fonts/ttf2/200-italic.ttf ../fonts/ttf/Jost-200-ThinItalic.ttf
ttfautohint -n ../fonts/ttf2/300.ttf ../fonts/ttf/Jost-300-Light.ttf
ttfautohint -n ../fonts/ttf2/300-italic.ttf ../fonts/ttf/Jost-300-LightItalic.ttf
ttfautohint -n ../fonts/ttf2/400.ttf ../fonts/ttf/Jost-400-Book.ttf
ttfautohint -n ../fonts/ttf2/400-italic.ttf ../fonts/ttf/Jost-400-BookItalic.ttf
ttfautohint -n ../fonts/ttf2/500.ttf ../fonts/ttf/Jost-500-Medium.ttf
ttfautohint -n ../fonts/ttf2/500-italic.ttf ../fonts/ttf/Jost-500-MediumItalic.ttf
ttfautohint -n ../fonts/ttf2/600.ttf ../fonts/ttf/Jost-600-Semi.ttf
ttfautohint -n ../fonts/ttf2/600-italic.ttf ../fonts/ttf/Jost-600-SemiItalic.ttf
ttfautohint -n ../fonts/ttf2/700.ttf ../fonts/ttf/Jost-700-Bold.ttf
ttfautohint -n ../fonts/ttf2/700-italic.ttf ../fonts/ttf/Jost-700-BoldItalic.ttf
ttfautohint -n ../fonts/ttf2/800.ttf ../fonts/ttf/Jost-800-Heavy.ttf
ttfautohint -n ../fonts/ttf2/800-italic.ttf ../fonts/ttf/Jost-800-HeavyItalic.ttf
ttfautohint -n ../fonts/ttf2/900.ttf ../fonts/ttf/Jost-900-Black.ttf
ttfautohint -n ../fonts/ttf2/900-italic.ttf ../fonts/ttf/Jost-900-BlackItalic.ttf

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
fontmake  -o otf --output-dir ../fonts/otf/ -u ../sources/UFO/100/100.ufo ../sources/UFO/100/100-italic.ufo ../sources/UFO/200/200.ufo ../sources/UFO/200/200-italic.ufo ../sources/UFO/300/300.ufo ../sources/UFO/300/300-italic.ufo ../sources/UFO/400/400.ufo ../sources/UFO/400/400-italic.ufo ../sources/UFO/500/500.ufo ../sources/UFO/500/500-italic.ufo ../sources/UFO/600/600.ufo ../sources/UFO/600/600-italic.ufo ../sources/UFO/700/700.ufo ../sources/UFO/700/700-italic.ufo ../sources/UFO/800/800.ufo ../sources/UFO/800/800-italic.ufo ../sources/UFO/900/900.ufo ../sources/UFO/900/900-italic.ufo

echo "Hot Fixes"
mv ../fonts/otf/100.otf ../fonts/otf/Jost-100-Hairline.otf
mv ../fonts/otf/100-italic.otf ../fonts/otf/Jost-100-HairlineItalic.otf
mv ../fonts/otf/200.otf ../fonts/otf/Jost-200-Thin.otf
mv ../fonts/otf/200-italic.otf ../fonts/otf/Jost-200-ThinItalic.otf
mv ../fonts/otf/300.otf ../fonts/otf/Jost-300-Light.otf
mv ../fonts/otf/300-italic.otf ../fonts/otf/Jost-300-LightItalic.otf
mv ../fonts/otf/400.otf ../fonts/otf/Jost-400-Book.otf
mv ../fonts/otf/400-italic.otf ../fonts/otf/Jost-400-BookItalic.otf
mv ../fonts/otf/500.otf ../fonts/otf/Jost-500-Medium.otf
mv ../fonts/otf/500-italic.otf ../fonts/otf/Jost-500-MediumItalic.otf
mv ../fonts/otf/600.otf ../fonts/otf/Jost-600-Semi.otf
mv ../fonts/otf/600-italic.otf ../fonts/otf/Jost-600-SemiItalic.otf
mv ../fonts/otf/700.otf ../fonts/otf/Jost-700-Bold.otf
mv ../fonts/otf/700-italic.otf ../fonts/otf/Jost-700-BoldItalic.otf
mv ../fonts/otf/800.otf ../fonts/otf/Jost-800-Heavy.otf
mv ../fonts/otf/800-italic.otf ../fonts/otf/Jost-800-HeavyItalic.otf
mv ../fonts/otf/900.otf ../fonts/otf/Jost-900-Black.otf
mv ../fonts/otf/900-italic.otf ../fonts/otf/Jost-900-BlackItalic.otf
