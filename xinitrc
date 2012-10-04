#exec xrandr -s 1680x1050 &
exec conky -c ~/.config/conky/.conkyrc &
tint2 &
exec nitrogen --restore &
setxkbmap -option "caps:escape" &
exec openbox-session 
