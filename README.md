# What is this?
This repo will allow you to code stuff for ComputerCraft using "advanced" technologies like MetaLua and Moonscript. This is achieved by using Tup for compiling the files with their correct compiler and then packaging everything using the Titanium Packager.

# How do I use it?
It's actually rather "easy". All you need is [Tup](http://gittup.org/tup) and the compilers for your favourite languages (which compile down to Lua, or a language which can compile to Lua). I personally only use [MetaLua](http://metalua.luaforge.net/) and [Moonscript](http://moonscript.org) so these are the only ones with built-in Tup-:-rules. But you can easily expand the rules yourself.
Optionally you can install [NaturalDocs](http://www.naturaldocs.org/) or any other documentation software you want. You just have to modify build.sh and add whatever commands your docs generator might need. The default contains a simple command for NaturalDocs which will output to the toplevel folder ___docs___, and the settings are saved in ___.ndocs___. (with language support for MetaLua and Moonscript added)

Once you have everything you need, just call build.sh (if you need more than just packaging, for example docs) or ``tup upd`` and watch the magic happen. You have to keep in mind that there has to be atleast on file in ___markup___,___styles___ and ___nodes___. This is due to a "limitation" of Tup. Just keep some empty file in there and you are good to go.

The packaged file can be found in _project_ as ___out.lua___.

If you want it to compile into a separate folder (idk why you would need that though) you can do ``tup variant default`` and it will compile everything into _build-default/..._.

# Testing
Right now it is using [Telescope](https://github.com/norman/telescope) because that's the first testing utility I got to work. If anyone has more experience with that stuff, please tell me how to add better ones (if they are even needed).
The folder structure for the tests might look a bit weird because it compiles the .moon files to .lua ones under the hood, because Telescope doesn't natively support Moonscript, which is kinda sad. If you want to use other .moon files from the _src_ folder you have to ``require "moonscript"`` first so subsequent ``require`` calls convert .moon files for you. Or you just load the stuff from the _compiled_ folder. 
