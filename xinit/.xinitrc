setxkbmap us,us -variant ,rus -option compose:rctrl,caps:ctrl_modifier,grp:toggle
xcape -e "Caps_Lock=Escape"
xbindkeys
exec xmonad
