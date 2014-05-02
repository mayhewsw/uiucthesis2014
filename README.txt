UIUCTHESIS2014 Package/Class
By Stephen Mayhew
(Slightly) Edited version of the UIUCTHESIS2009 Package/Class
By Charles Kiyanda
Edited version of the UIUCTHESIS07 Package/Class
by Tim Head (based on the Peter Czoschke version)
Edited version of the UIUCTHESIS Package/Class
by Peter Czoschke (based on the original version by David Hull)


Description
-----------

uiucthesis is a LaTeX package for formatting theses in the format
required by the University of Illinois at Urbana-Champaign.

A class file and style file are provided. Both provide identical
functionality except that the class file loads the "book"
class with the [oneside] option.


Files
-----

README                  	This file
uiucthesis2014.dtx		Source for uiucthesis.cls, uiucthesis.sty and thesis-ex.tex
uiucthesis2014.ins      	Driver file for uiucthesis.dtx
uiucthesis2014.pdf		Precompiled PDF file of documentation from .dtx file
thesis-ex.pdf           	Precompiled PDF file of the example file generated from installation
uiucthesis2014.cls		Pregenerated class file
uiucthesis2014.sty		Pregenerated style file (for backwards-compatibility)


Installation
------------

latex uiucthesis.ins           <== Produces uiucthesis.cls, uiucthesis.sty
				   and thesis-ex.tex
latex uiucthesis.dtx           <== Produces uiucthesis.dvi (documentation)
latex uiucthesis.dtx           <== One more time, to fix cross-references

You can do the last two steps on thesis-ex.tex as well to generate the example
file (DVI).


Dependencies
------------

This package requires the setspace package.
