setxkbmap us -option 'compose:rctrl,caps:ctrl_modifier'
xcape -e "Caps_Lock=Escape"
xbindkeys
exec xmonad
