acidsketch
==========

Acid Sketching for Python

This is a rewrite of an old Acid Sketching project that I made for a
Hangar/lull'cec workshop as part of the addicted2random project. 

The idea is to use computer vision turn shapes into sounds, and also a
2D arrangement of shapes into a sequence of sounds, using a live
interface. Basically it's a way of drawing acid house basslines.

You can read more about the idea here:
  http://yaxu.org/acid-sketching/

plus I mention it in the symbols chapter here too:
  http://yaxu.org/thesis

This version with python, to make it more cross platform (the previous
version was made in an old version of open frameworks).

acid.py is the main program, and neko.pl is a perl script which starts
the nekobee TB303 emulator (see below).

It works much the same way although no longer does background
substitution, so you have to get the lighting just right. It doesn't
to quad warping to allow projecting back on the drawing surface
either, although that would be fairly easy to add back in.

It's still prototype-quality code, in fact I did the rewrite the night
before the workshop, along with slides etc, so it's a bit messy in
places.

It has a few dependencies. For python you need graphtool, pygame,
opencv2 and liblo.

In addition for the synthesis you need jack-dssi-host and the nekobee
tb303 emulator. These have packages in debian and derivatives
(e.g. ubuntu, crunchbang, mint), not sure how easy it would be to get
working in non-linux systems.

Alternatively you could use another synthesiser and change the
mappings in the code accordingly.

Let me know how you get on - alex@slab.org
