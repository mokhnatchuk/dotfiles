# .bash_profile

[ -f $HOME/.bashrc ] && . $HOME/.bashrc

export GDK_BACKEND=wayland
export QT_QPA_PLATFORM=wayland
export SDL_VIDEODRIVER=wayland
export _JAVA_AWT_WM_NONREPARENTING=1
export ELECTRON_OZONE_PLATFORM_HINT=wayland 
export MESA_LOADER_DRIVER_OVERRIDE=iris
export MESA_GLTHREAD=true
export XDG_SESSION_TYPE=wayland
export XDG_CURRENT_DESKTOP=sway
export MOZ_ENABLE_WAYLAND=1


if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then
	exec dbus-run-session sway > ~/.sway.log 2>&1
fi
