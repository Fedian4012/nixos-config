{ config, pkgs, ... }:

{
  dconf.settings = {
    "org/gnome/desktop/wm/preferences" = {
      action-middle-click-titlebar="toggle-maximize-vertically";
      auto-raise=true;
      button-layout="appmenu:minimize,maximize,close";
      focus-mode="click";
      num-workspaces=2;
      resize-with-right-button=true;
      titlebar-font="RobotoRegular Bold 11";
    };

    "org/gnome/mutter" = {
      attach-modal-dialogs=false;
      center-new-windows=true;
      workspaces-only-on-primary=false;
    };
  };
}