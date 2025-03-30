local wezterm = require 'wezterm'
local config = wezterm.config_builder()
local keyconfig = require 'keybinds'
local act = wezterm.action

config = {
  exit_behavior = 'Close',
  enable_scroll_bar = false,
  font = wezterm.font 'CaskaydiaCove',
  -- font = wezterm.font 'Victor Mono',
  -- font = wezterm.font 'Iosevka',
  -- color_scheme = 'Ashes (base16)',
  -- color_scheme = 'astromouse (terminal.sexy)',
  font_size = 13,
  use_fancy_tab_bar = false,
  show_close_tab_button_in_tabs = false
}

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}


wezterm.on('update-right-status', function(window, pane)
  local date = wezterm.strftime '%H:%M'
  window:set_right_status(wezterm.format{
      {Attribute = {Italic = true}},
      {Text = window:active_workspace()},
      {Attribute = {Italic = false}},
      {Text = "  " .. date},
    }
  )
end)

config.color_scheme = 'Modus-Vivendi'
keyconfig.apply(config)

return config
