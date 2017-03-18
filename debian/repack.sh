#!/bin/sh
# Get rid of dos line endings that get converted to unix when importing to git,
# with the result that dpkg-source will complain about conflicts when building from git.
tar -xvzf $1.tar.gz
find $1/share -name *.mac -exec dos2unix '{}' \;
tar -c $1 | xz -zf > $1+ds.orig.tar.xz
