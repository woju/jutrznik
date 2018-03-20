#!/bin/sh

#
# (c) 2016-2018 Wojtek Porczyk <w.porczyk@warszawa.oaza.pl>
# Licence: GPL-3 or later. No warranty.
#
# krótki skrypcior do hurtowego poprawiania psalmów
# używany z vima: zaznaczyć od "Psalm <NR>" a potem :'<,'>!./psalm.sh
#

read title
printf '\\startpsalmus[title={%s}]\n' "$title"

sed \
    -e 's: q$:\\pflx:' \
    -e 's: \*$:\\pmed:' \
    -e 's:^[^\\]*$:&\\pfin:' \
    -e 's:\(\<\w\>\) :\1\~:g' \
    -e 's:„:\\startquote :g' \
    -e 's:” :\\stopquote\space :g' \
    -e 's:”:\\stopquote:g'

printf '\\stoppsalmus\n'
