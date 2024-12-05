#!/bin/bash
NIGHTLY_BUILD=`gh release list -L1 --json tagName | grep tagName | cut -d: -f2 | cut -d\" -f2`
gh release download $NIGHTLY_BUILD

for I in *.hex
do
#inav_8.0.0_ZEEZF7V3_dev-20241205-9e8bd55.hex
NEWNAME=`echo $I | sed 's/_dev-.\+.hex$/.hex/g'`
echo $NEWNAME
mv -v $I $NEWNAME
done

