local wezterm = require "wezterm"
local act = wezterm.action

local keyconfig = {}


function keyconfig.apply(config)
  config.leader = { key = 'x', mods = "ALT", timeout_milliseconds = 1000 }
  -- config.disable_default_key_bindings = true
    config.keys = {
    -- NOTE: for some reason vertical and horizontal are opposite
    -- it messes up my brain
    {
      key = 'h',
      mods = "LEADER",
      action = wezterm.action.SplitVertical { domain = "CurrentPaneDomain" }
    },
    {
      key = 'v',
      mods = "LEADER",
      action = wezterm.action.SplitHorizontal { domain = "CurrentPaneDomain" }
    },
    {
      key = 'c',
      mods = "LEADER",
      action = wezterm.action.SpawnTab "DefaultDomain"
    },
    {
      key = 'x',
      mods = "LEADER",
      action = wezterm.action.SpawnCommandInNewTab{
          args = { "/home/owl/.cargo/bin/hx" },
      }
    },
    {
      key = 'p',
      mods = "CTRL|SHIFT",
      action = wezterm.action.ActivateCommandPalette
    },
    {
      key = '1',
      mods = "LEADER",
      action = act.PaneSelect
    },
    {
      key = '2',
      mods = "LEADER",
      action = act.PaneSelect{
        mode = "SwapWithActive",
        alphabet = "1234567890"
      }
    },
    {
      key = 'h',
      mods = "CTRL|SHIFT",
      action = act.ActivatePaneDirection "Left",
    },
    {
      key = 'l',
      mods = "CTRL|SHIFT",
      action = act.ActivatePaneDirection "Right",
    },
    {
      key = 'k',
      mods = "CTRL|SHIFT",
      action = act.ActivatePaneDirection "Up",
    },
    {
      key = 'j',
      mods = "CTRL|SHIFT",
      action = act.ActivatePaneDirection "Down",
    },
    {
      key = 'n',
      mods = "LEADER",
      action = act.ActivateTabRelative(1),
    },
    {
      key = 'p',
      mods = "LEADER",
      action = act.ActivateTabRelative(-1),
    },
    {
      key = 'o',
      mods = "LEADER",
      action = act.ActivateLastTab,
    },
    {
      key = "LeftArrow",
      mods = "CTRL|SHIFT",
      action = act.AdjustPaneSize { "Left", 1 },
    },
    {
      key = "DownArrow",
      mods = "CTRL|SHIFT",
      action = act.AdjustPaneSize { "Down", 1 },
    },
    {
      key = "UpArrow",
      mods = "CTRL|SHIFT",
      action = act.AdjustPaneSize { "Up", 1 }
    },
    {
      key = "RightArrow",
      mods = "CTRL|SHIFT",
      action = act.AdjustPaneSize { "Right", 1 },
    },
    {
      key = 'y',
      mods = "CTRL|SHIFT",
      action = act.SwitchToWorkspace {
        name = "default",
      },
    },
    {
      key = 'X',
      mods = "LEADER",
      action = act.SwitchToWorkspace {
        name = "helix",
        spawn = {
          args = { "/home/owl/.cargo/bin/hx" },
        },
      },
    },
    -- Create a new workspace with a random name and switch to it
    {
      key = 'W',
      mods = "LEADER",
      action = act.SwitchToWorkspace
    },
    {
      key = 'w',
      mods = "LEADER",
      action = act.PromptInputLine {
        description = wezterm.format {
          { Attribute = { Intensity = "Bold" } },
          { Foreground = { AnsiColor = "Fuchsia" } },
          { Text = "Enter name for new workspace" },
        },
        action = wezterm.action_callback(function(window, pane, line)
          if line then
            window:perform_action(
              act.SwitchToWorkspace {
                name = line,
              },
              pane
            )
          end
        end),
      },
    },
    -- Show the launcher in fuzzy selection mode and have it list all workspaces
    -- and allow activating one.
    {
      key = 'f',
      mods = "LEADER",
      action = act.ShowLauncherArgs {
        flags = "FUZZY|WORKSPACES",
      },
    },
    {
      key = '/',
      mods = "LEADER",
      action = act.Search {
        CaseInSensitiveString=""
      }
    },
    {
      key = 'z',
      mods = "LEADER",
      action = act.TogglePaneZoomState
    },
    { key = 'w',
      mods = "CTRL|SHIFT",
      action = act.ScrollByPage(-0.5)
    },
    { key = 's',
      mods = "CTRL|SHIFT",
      action = act.ScrollByPage(0.5)
    },
  }
end

return keyconfig
