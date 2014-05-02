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

uiucthesis2014 is a LaTeX package for formatting theses in the format
required by the University of Illinois at Urbana-Champaign.

A class file and style file are provided. Both provide identical
functionality except that the class file loads the "book"
class with the [oneside] option.


Files
-----

README                  	This file
uiucthesis2014.dtx		    Source for uiucthesis.cls, uiucthesis.sty and thesis-ex.tex
uiucthesis2014.ins      	Driver file for uiucthesis.dtx
uiucthesis2014.pdf		    Precompiled PDF file of documentation from .dtx file
thesis-ex.pdf           	Precompiled PDF file of the example file generated from installation
uiucthesis2014.cls		    Pregenerated class file
uiucthesis2014.sty		    Pregenerated style file (for backwards-compatibility)


Installation
------------

make files                 <== Produces uiucthesis2014.cls, uiucthesis2014.sty, and thesis-ex.tex
make example               <== Produces thesis-ex.pdf
make doc                   <== Produces uiucthesis2014.pdf


Dependencies
------------

This package requires the setspace package.


Update Notes
------------

2.25b (Stephen Mayhew)
  * Added a Makefile
  * Changed all dates from 2009 -> 2014
  * Be careful when updating the date in the first line of uiucthesis2014.dtx! All numbers must be two digits, including month and day.
