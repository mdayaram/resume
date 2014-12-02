Resume
======

This is the XeLateX source for my resume, of which the template is shamelessly stolen from
[Deedy](https://github.com/deedydas/Deedy-Resume).

## Requirements

Having XeLateX.  I use the command line tool.  For mac, there's a neat little
package that contains everything you need here:

http://www.tug.org/mactex/


## Rendering

I included a `Makefile` so building is as easy as...
```bash
$ make
$ make open  # opens pdf using Mac 'open' command
```
Alternatively, you can call `make render` which is essentially calling `make`
and `make open` immediately after.

## Original Author Notes

```
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Deedy - One Page Two Column Resume
% LaTeX Template
% Version 1.2 (16/9/2014)
%
% Original author:
% Debarghya Das (http://debarghyadas.com)
%
% Original repository:
% https://github.com/deedydas/Deedy-Resume
%
% IMPORTANT: THIS TEMPLATE NEEDS TO BE COMPILED WITH XeLaTeX
%
% This template uses several fonts not included with Windows/Linux by
% default. If you get compilation errors saying a font is missing, find the line
% on which the font is used and either change it to a font included with your
% operating system or comment the line out to use the default font.
%
```
