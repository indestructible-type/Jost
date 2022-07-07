[Jost*](http://indestructible-type.github.io/Jost.html)
========
![Jost* Picture](https://indestructibletype.com/assets/Jost-h.svg)
Jost* is an original font created by indestructible type*. It is inspired by
the 1920s German sans-serifs. This is version 3.7.

Jost* is designed and maintained by [Owen Earl](https://ewonrael.github.io/), who is the creator of the font foundry [indestructible type*](http://indestructible-type.github.io).

About
-----
During the 1920s there was a radical shift in German sans serif letterforms. A marriage between the
precise geometry of earlier German sans serifs with the clean legibility of the humanists coming out of
England, yielded a geometric sans serif that is so iconic that it still looks as futuristic and forward-
thinking as it did almost 100 years ago. Jost* is an ode to this era of type design. Instead of trying to
recreate it precisely, Jost* aims to capture the spirit, using the technologies of today.

Jost* has 9 weights, ranging from Hairline to Black. It can support many languages, includes stylistic
alternatives, and both tabular and proportional numbers. Using Jost* on the web is as easy as copying a
line of code into your webpage and includes automatic updates. As of version 3.0, Jost* supports OpenType
Variable Font technology that allows users to control the exact weight and italic of the font. Best of all
Jost* is still being actively developed meaning it will continue to improve and future updates may include
features requested by you! [Visit the website for more information!](http://indestructibletype.com/Jost)

![Jost* weights Picture](https://indestructibletype.com/Jost/weight.svg)

Changelog
---------
<b>2.0</b>
Rebuilt from the ground up.<br>
<b>2.1</b>
Added oe ligatures to support French, fixed some italics<br>
<b>2.2 </b>
Added alternative a, fixed some kerning, fixed overshoot in bolder weights, added thin version!<br>
<b>2.3 </b>
Fixed missing kerning information on Book, Medium, and Bold weights<br>
<b>3.0 </b>
Redesigned and rebuilt to work as an OpenType Variable Font. Added Hairline, Semi, and Heavy weights. Added tabular number alternatives. Improved language support. General fixing of things.<br>
<b>3.1 </b>
Fixed metadata and metric issues<br>
<b>3.2 </b>
Renamed font from "Renner\*" to "Jost\*" due to international intellectual property rights concerns. Fixed some kerning issues, added capital sharp S, added Polish glyphs. Minor design fixes.<br>
<b>3.3 </b>
Added optical compensation to italics. Added Czech support. Minor tweaks and fixes.<br>
<b>3.4 </b>
Added Cyrillic alphabet (Russian support). Fixed metadata issues and added Romanian support.<br>
<b>3.5 </b>
Added some math symbols. Improved letterforms. Improved GitHub repo. Added automated build.sh script.<br>
<b>3.6 </b>
Fixed up scripting, improved variable font. Now supports italic a and uses less source info.<br>
<b>3.7 </b>
Build italic and nonitalic variable fonts for GF

Web Use
-------
To use on your webpage, simply put the following line of code into the `<head>` of the webpage you'd like to display Jost* and use `font-family: 'Jost';` in your css.<br>
`<link rel="stylesheet" href="https://indestructibletype.com/fonts/Jost.css" type="text/css" charset="utf-8" />`

Building the Variable Font.
---------------------------
Jost* is licensed under the [SIL open type license](http://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&id=OFL), meaning that it is free to use and modify. However, because of the difficulty
associated with creating the OpenType Variable Font features, the compiled, functioning version of this font
requires a payment of $10 or more on the website. On the other hand, if you'd like to build this font yourself using
the source code, the follow the following instructions.

1. Download the complete source code, either by cloning this repository or downloading the .zip file.

2. Download and install:<br>
**fontmake** which can be found [here](https://github.com/googlei18n/fontmake)<br>
**gftools** which can be found [here](https://github.com/googlefonts/gftools)<br>
**ttfautohint** which can be found [here](https://www.freetype.org/ttfautohint/)<br>

3. Run the build.sh script located in the "scripts" folder. This should make both the variable and non-variable versions of the font.

Contact
-------
If you have questions or want to help out, send me and email at indestructibletype@gmail.com
