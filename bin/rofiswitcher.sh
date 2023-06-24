#!/usr/bin/env bash  
rofi -kb-cancel "Alt+Escape,Escape" -kb-accept-entry '!Alt-Tab,!Alt+Down,!Alt+Up,Return,!Alt+Alt_L' -kb-row-down 'Alt+Tab,Alt+Down,Down' -kb-row-up 'Alt+Up,Up' -show window -selected-row 1   
exit 
