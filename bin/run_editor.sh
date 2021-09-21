#!/bin/sh
#export JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=gasp -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
export JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true'
export JAVA_OPTS="$JAVA_OPTIONS"
[ "$1" != "" ] && ARGS="-Pfile=$1"
./gradlew runTool -Ptool=editor/Editor.groovy $ARGS
