{ config, pkgs, ... }:

{
  programs.gnome-shell.extensions = [
    {
      package = pkgs.gnomeExtensions.dash-to-dock;
    }
  ];

  dconf.settings = {
    "org/gnome/shell/extensions/dash-to-dock" = {
      always-center-icons = true;
      apply-custom-theme = true;
      background-opacity = 0.80000000000000004;
      custom-theme-shrink = false;
      dash-max-icon-size = 48;
      disable-overview-on-startup = false;
      dock-position = 'BOTTOM';
      extend-height = false;
      height-fraction = 1.0;
      hot-keys = false;
      intellihide-mode = 'FOCUS_APPLICATION_WINDOWS';
      isolate-monitors = false;
      isolate-workspaces = true;
      middle-click-action = 'launch';
      multi-monitor = true;
      preferred-monitor = -2;
      preferred-monitor-by-connector = 'VGA-1';
      preview-size-scale = 0.10000000000000001;
      require-pressure-to-show = false;
      running-indicator-style = 'DEFAULT';
      shift-click-action = 'minimize';
      shift-middle-click-action = 'launch';
      show-apps-always-in-the-edge = true;
      show-apps-at-top = false;
      show-show-apps-button = true;
      transparency-mode = 'DYNAMIC';
    };
  };
}