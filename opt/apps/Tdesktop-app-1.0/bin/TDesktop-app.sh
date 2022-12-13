#!/bin/sh
appname=`basename $0 | sed s,\.sh$,,`
dirname=`dirname $0`
tmp="${dirname#?}"
if [ "${dirname%$tmp}" != "/" ]; then
dirname=$PWD/$dirname
fi
#export PATH=$dirname:$PATH
#export LD_LIBRARY_PATH=$dirname/../lib
#export QT_PLUGIN_PATH=$dirname/../plugins
#$dirname/$appname "$@"

pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY PATH=$dirname:$PATH LD_LIBRARY_PATH=$dirname/../lib QT_PLUGIN_PATH=$dirname/../plugins $dirname/$appname "$@"

