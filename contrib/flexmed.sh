#!/bin/sh

#
# (c) 2016-2018 Wojtek Porczyk <w.porczyk@warszawa.oaza.pl>
# Licence: GPL-3 or later. No warranty.
#
# krótki skrypcior do hurtowego poprawiania psalmów
# używany z vima: zaznaczyć od "Psalm <NR>" a potem :'<,'>!./psalm.sh
#

sed \
    -e 's: q :\~\\flexas :' \
    -e 's: \* :\~\\mediatios :' \
    -e 's:\(\<\w\>\) :\1\~:g' \
