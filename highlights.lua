local M = {}

M.override = {
  Comment = {
    italic = true,
  },
}

M.base_16 = {
  base00 = "#1c2433",
  base01 = "#262e3d",
  base02 = "#303847",
  base03 = "#444c5b",
  base04 = "#a1adb7",
  base05 = "#c3cfd9",
  base06 = "#ABB7C1",
  base07 = "#08bdba",
  base08 = "#FF738A",
  base09 = "#FF955C",
  base0A = "#EACD61",
  base0B = "#3CEC85",
  base0C = "#77aed7",
  base0D = "#69C3FF",
  base0E = "#22ECDB",
  base0F = "#B78AFF",
}

M.add = {
  --- DAP 
  DapBreakpoint = { fg = M.base_16.base08 },
  DapBreakpointCondition = { fg = M.base_16.base0F },
  DapLogPoint = { fg = M.base_16.base0D },
  DapStopped = { fg = M.base_16.base0B },

  --- Dashboard
  DashboardHeader = { fg = M.base_16.base05 }, -- Logo
  DashboardFooter = { fg = M.base_16.base09, italic = true }, -- Footer
  DashboardShortCut = { fg = M.base_16.base0D }, -- all top links and hotkeys
  DashboardShortCutIcon = { fg = M.base_16.base09 }, -- top row icons
  DashboardFiles = { fg = M.base_16.base05 }, -- all file links
  DashboardProjectTitle = { fg = M.base_16.base0F, italic = true, bold = true }, -- label "recent projects"
  DashboardProjectTitleIcon = { fg = M.base_16.base0F }, -- icon "recent projects"
  DashboardProjectIcon = { fg = M.base_16.base0F }, -- link icons under "recent projects"
  DashboardMruTitle = { fg = M.base_16.base0E, italic = true, bold = true }, -- label "recent files" 
  DashboardMruIcon = { fg = M.base_16.base0E }, -- icon "recent files"
  DashboardPrimary = { fg = M.base_16.base0D },
  DashboardSecondary = { fg = M.base_16.base0B, italic = true },
}

return M
