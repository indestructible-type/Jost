import fontmake.instantiator
import fontTools.designspaceLib
from glyphsLib.cli import main
import os, shutil
from pathlib import Path
import ufoLib2

try:
    os.mkdir("sources/instances")
except:
    pass

sourceURL = Path("sources/designspace")
instanceURL = Path("sources/instances")

designspace = fontTools.designspaceLib.DesignSpaceDocument.fromfile(
        sourceURL / "jost.designspace"
    )

designspace.loadSourceFonts(ufoLib2.Font.open)

generator = fontmake.instantiator.Instantiator.from_designspace(designspace)
for instance_descriptor in designspace.instances:
    instance_descriptor.familyName = instance_descriptor.familyName.replace("Jost*", "Jost")

    instance = generator.generate_instance(instance_descriptor)

    instance.info.familyName = "Jost"
    instance.info.styleMapFamilyName = "Jost"
    if instance.info.styleName == "Book Italic":
        instance.info.styleName = "Italic"
        instance.info.postscriptFontName = "Jost-Italic"
    elif instance.info.styleName == "Book":
        instance.info.styleName = "Regular"
        instance.info.postscriptFontName = "Jost-Regular"

    name = instance_descriptor.familyName+"-"+instance_descriptor.styleName

    instance.save(instanceURL / str(name.replace(" ","")+".ufo"), overwrite = True)