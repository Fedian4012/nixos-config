{ config, pkgs, ...}:

{
  programs.gnome-shell.extensions = [
    { package = pkgs.gnomeExtensions.blur-my-shell; }
    { package = pkgs.gnomeExtensions.compiz-windows-effect; }
    { package = pkgs.gnomeExtensions.compiz-alike-magic-lamp-effect; }
    { package = pkgs.gnomeExtensions.dash-to-dock; }
    { package = pkgs.gnomeExtensions.freon; }
    { package = pkgs.gnomeExtensions.system-monitor; }
    { package = pkgs.gnomeExtensions.user-themes; }
  ];

  dconf.settings = {
    "org/gnome/shell/extensions/blur-my-shell" = {
      settings-version = 2;
    };

    "org/gnome/shell/extensions/blur-my-shell/appfolder" = {
      brightness=0.59999999999999998;
      sigma=30;
    };

    "org/gnome/shell/extensions/blur-my-shell/panel" = {
      brightness=0.59999999999999998;
      sigma=30;
    };

    "org/gnome/shell/extensions/blur-my-shell/window-list" = {
      brightness=0.59999999999999998;
      sigma=30;
    };

    "org/gnome/shell/extensions/com/github/hermes83/compiz-windows-effect" = {
      last-version = 29;
      # preset = 'R';
      resize-effect = true;
    };

    "org/gnome/shell/extensions/dash-to-dock" = {
      always-center-icons = true;
      apply-custom-theme = true;
      background-opacity = 0.80000000000000004;
      custom-theme-shrink = false;
      dash-max-icon-size = 48;
      disable-overview-on-startup = false;
      dock-position = "BOTTOM";
      extend-height = false;
      height-fraction = 1.0;
      hot-keys = false;
      intellihide-mode = "FOCUS_APPLICATION_WINDOWS";
      isolate-monitors = false;
      isolate-workspaces = true;
      middle-click-action = "launch";
      multi-monitor = true;
      preferred-monitor = -2;
      preferred-monitor-by-connector = "VGA-1";
      preview-size-scale = 0.10000000000000001;
      require-pressure-to-show = false;
      running-indicator-style = "DEFAULT";
      shift-click-action = "minimize";
      shift-middle-click-action = "launch";
      show-apps-always-in-the-edge = true;
      show-apps-at-top = false;
      show-show-apps-button = true;
      transparency-mode = "DYNAMIC";
    };

    "org/gnome/shell/extensions/freon" = {
      hot-sensors = ["__max__" "__average__"];
      panel-box-index = 0;
      show-decimal-value = true;
      show-power-unit = true;
      use-drive-hddtemp = true;
    };

    "org/gnome/shell/extensions/user-themes" = {
      name = "Orchis-Dark";
    };
  };
}