#!/usr/bin/env bash

sWarning="/*\\n\\t!!! DO NOT EDIT THIS FILE !!!\\n\\n\\tThis file has be generated and your edits will be overwritten\\n*/"
sFile="PHP-coding-standards.dot"
sLayoutEngine="dot"\

#    && ccomps -v -x "${sFile}" | dot -v | gvpack -v -array3 | neato -v -Tpng -n2 -o "${sFile}.png" \
echo -e "${sWarning}" | cat - graph/* > "${sFile}"    \
    && dot -Tpng -O "${sFile}" "-K${sLayoutEngine}" -v \
    && eom "${sFile}.png" --fullscreen


#EOF