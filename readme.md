# Dots.

Functional config I've been daily using for a very long time.

Must needed programs to work.
- Hyprland & Waybar
- Ghostty/Foot
- Helix
- Zen
- Bemenu
- Satty
- Sawaync
- Fish
- Kanata and its sudoless setup
- wl-clipboard
- font: Caskaydia Cove/Iosevka_SPW/Inter

## Keybind
Logic behind keybind is windowing related keybinds like launching programs, switching 
window, resizing and moving windows, all starts with `super` key. Application shortcuts
are with `alt` or combination with `ctrl` (example alt c for new tabs in ghostty/tmux).

```
- Super + Return => terminal
- Super + Space => program launcher
- Super + d => search in browser
- Super + s => search in documentation
- Super + c => toggle waybar
- Alt + x> h  v => create horiz, vertic tabs
- Alt + h j k l => move in tabs
- Alt + c => create new tab
- Super + g => new group accepting ghostty and foot only
- Super , . => move groups
```

- Window keybinds are all defined in hypr/keybinds.conf
- Tmux and ghostty bindings are almost similar

One can also use groups that only accepts foot and ghostty, able to launch foot and ghostty
like tabs of a same window.

