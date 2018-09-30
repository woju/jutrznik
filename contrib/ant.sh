#!/bin/sh

#
# (c) 2016-2018 Wojtek Porczyk <w.porczyk@warszawa.oaza.pl>
# Licence: GPL-3 or later. No warranty.
#
# krótki skrypcior do hurtowego poprawiania psalmów
# używany z vima: zaznaczyć tekst, a potem :'<,'>!./whitesp.sh
#

exec sed \
    -e 's:\(\<\w\>\) :\1\~:g' \
    -e 's: \([/*]\):\~\1:g' \
    -e 's: *q$:\~\\cont:g' \

# vim: ts=4 sts=4 sw=4 et
