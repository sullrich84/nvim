local header = {
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣤⣴⡶⠖⢀⣀⣤⣤⣤⣀      ",
  " ⠀⠀⠀⣀⣤⣴⣶⣾⣿⣿⣿⣿⣿⣿⠛⣡⣴⣾⣿⣿⣿⣿⣿⣿⣷⡀   ",
  " ⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧   ",
  " ⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⢻⣿⣿⣿⣿⠟⣉⠻⣿⣶⣿⡄  ",
  " ⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠈⢿⣿⣿⣿⡀⠻⣷⣌⠙⢿⣧  ",
  " ⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⡙⠻⠿⠁⠀⠈⠙⠳⢄⡉  ",
  " ⠸⢸⣿⣿⣿⣿⣿⡿⢛⣿⣿⣿⣿⣿⣿⣿⣿⣟⠀⠀⢀⣀⠀⠀⠀⣤⣈  ",
  " ⠀⠘⣿⣿⣿⣿⠋⠐⠿⠿⠿⠿⢃⠘⣿⣿⣿⣿⠀⢰⣿⡟⠀⠀⣰⣿⡟  ",
  " ⠀⠀⣿⣿⣿⣿⠀⣿⣿⡆⠀⠀⣾⠀⣿⣿⣿⣿⠀⠈⠻⣿⣿⣿⣿⡿⠁  ",
  " ⠀⠀⣿⣿⣿⣿⠀⣿⣿⣷⠀⠀⣿⡆⢸⣿⣿⣿⠀⠀⠀⠀⠉⠉⠁    ",
  " ⠀⠀⠛⠿⠿⠃⠀⠻⠿⠋⠀⠀⠻⠇⠘⠿⠿⠟⠀sully.vim ",
  "",
}

return {
  theme = "hyper",
  config = {
    header = header,
    disable_move = true,
    week_header = {
      enable = false,
    },
    shortcut = {
      {
        icon = "  ",
        icon_hl = "DashboardIconPrimary",
        desc = "Projects",
        group = "DashboardPrimary",
        action = "Telescope project",
        key = "p",
      },
      {
        icon = "󰋚  ",
        icon_hl = "DashboardIconPrimary",
        desc = "Recent",
        group = "DashboardPrimary",
        action = "Telescope oldfiles",
        key = "r",
      },
      {
        icon = "  ",
        icon_hl = "DashboardIconPrimary",
        desc = "Grep",
        group = "DashboardPrimary",
        action = "Telescope live_grep",
        key = "g",
      },
      {
        icon = "󰍉  ",
        icon_hl = "DashboardIconPrimary",
        desc = "Find",
        group = "DashboardPrimary",
        action = "Telescope find_files",
        key = "f",
      },
      {
        icon = "  ",
        icon_hl = "DashboardIconSecondary",
        desc = "Config",
        group = "DashboardSecondary",
        action = "e $MYVIMRC",
        key = "c",
      },
      {
        icon = "󰚰  ",
        icon_hl = "DashboardIconSecondary",
        desc = "Update",
        group = "DashboardSecondary",
        action = "Lazy update",
        key = "u",
      },
      {
        icon = "󰛯  ",
        icon_hl = "DashboardIconSecondary",
        desc = "Health",
        group = "DashboardSecondary",
        action = "checkhealth",
        key = "h",
      },
      {
        icon = "󰩈  ",
        icon_hl = "DashboardIconPrimary",
        desc = "Quit",
        group = "DashboardPrimary",
        action = "qa",
        key = "q",
      },
    },
    project = {
      enable = true,
      limit = 8,
      icon = " ",
      label = " Recent Projects:",
      action = "Telescope find_files cwd=",
    },
    mru = {
      enable = true,
      limit = 8,
      icon = "󰋚 ",
      label = " Recent files:",
    },
    footer = function()
      local date = os.date "%A, %d. %B %Y %H:%M:%S"
      return { "", date }
    end,
  },
}