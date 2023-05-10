#!/bin/bash
#<<DARK>>

#captura id-touchpad
touchpad_id=$(xinput list | grep "Touchpad" | sed 's/.*id=\([0-9]*\).*/\1/')

id2=$(xinput list-props 11 | grep -m 1 'libinput Tapping Enable' | awk -F'[(]|[)]' '{print $2}')

id3=$(xinput list-props 11 | grep -m 1 'libinput Natural Scrolling Enable' | awk -F'[(]|[)]' '{print $2}')


# Aplicar configuraciones al touchpad

xinput set-prop $touchpad_id $id2 1
xinput set-prop $touchpad_id $id3 1

