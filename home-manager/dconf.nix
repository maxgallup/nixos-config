# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "org/gnome/desktop/background" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = "file:///home/max/nixos-config/media/monterey-dark-green.jpg";
      picture-uri-dark = "file:///home/max/nixos-config/media/monterey-dark-green.jpg";
      primary-color = "#000000000000";
      secondary-color = "#000000000000";
    };

    "org/gnome/desktop/input-sources" = {
      current = mkUint32 0;
      sources = [ (mkTuple [ "xkb" "us" ]) ];
    };

    # TODO: copy fonts into .config/.fonts/...
    # "org/gnome/desktop/interface" = {
    #   accent-color = "green";
    #   clock-format = "24h";
    #   color-scheme = "prefer-dark";
    #   cursor-size = 24;
    #   document-font-name = "CodeNewRoman Nerd Font Mono Bold 11";
    #   font-antialiasing = "grayscale";
    #   font-hinting = "none";
    #   font-name = "Helvetica Neue Medium 11";
    #   monospace-font-name = "CodeNewRoman Nerd Font Mono Bold 11";
    #   show-battery-percentage = true;
    #   text-scaling-factor = 1.0;
    #   toolkit-accessibility = false;
    # };



    "org/gnome/desktop/peripherals/keyboard" = {
      delay = mkUint32 166;
      numlock-state = false;
      repeat = true;
      repeat-interval = mkUint32 6;
    };

    "org/gnome/desktop/peripherals/mouse" = {
      speed = 0.0;
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      click-method = "fingers";
      speed = -2.34375e-2;
      two-finger-scrolling-enabled = true;
    };

    "org/gnome/desktop/privacy" = {
      old-files-age = mkUint32 30;
      recent-files-max-age = -1;
      report-technical-problems = true;
    };

    "org/gnome/desktop/session" = {
      idle-delay = mkUint32 0;
    };

    "org/gnome/desktop/sound" = {
      allow-volume-above-100-percent = true;
      event-sounds = true;
      theme-name = "__custom";
    };

    "org/gnome/desktop/wm/keybindings" = {
      begin-move = [ "<Super>e" ];
      begin-resize = [ "<Super>r" ];
      close = [ "<Primary>q" ];
      cycle-group = [];
      cycle-group-backward = [];
      cycle-panels = [];
      cycle-panels-backward = [];
      cycle-windows = [];
      cycle-windows-backward = [];
      maximize = [];
      move-to-monitor-left = [];
      move-to-monitor-right = [];
      move-to-workspace-1 = [];
      move-to-workspace-down = [];
      move-to-workspace-last = [];
      move-to-workspace-left = [ "<Shift><Super>w" ];
      move-to-workspace-right = [ "<Shift><Super>s" ];
      move-to-workspace-up = [];
      panel-main-menu = [];
      panel-run-dialog = [ "<Alft>F2" ];
      switch-applications = [ "<Super>Tab" "<Alt>Tab" ];
      switch-applications-backward = [ "<Shift><Super>Tab" "<Shift><Alt>Tab" ];
      switch-group = [];
      switch-group-backward = [];
      switch-input-source = [];
      switch-input-source-backward = [];
      switch-panels = [];
      switch-panels-backward = [];
      switch-to-workspace-1 = [];
      switch-to-workspace-down = [];
      switch-to-workspace-last = [];
      switch-to-workspace-left = [ "<Super>w" ];
      switch-to-workspace-right = [ "<Super>s" ];
      switch-to-workspace-up = [];
      toggle-fullscreen = [ "<Super>slash" ];
      toggle-maximized = [ "<Super>Space" ];
    };

    "org/gnome/evince/default" = {
      continuous = true;
      dual-page = false;
      dual-page-odd-left = true;
      enable-spellchecking = true;
      fullscreen = false;
      inverted-colors = false;
      show-sidebar = true;
      sidebar-page = "thumbnails";
      sidebar-size = 148;
      sizing-mode = "free";
      window-ratio = mkTuple [ 1.5824592289962973 1.254320635712504 ];
      zoom = 1.2558674125514409;
    };

    "org/gnome/login-screen" = {
      enable-fingerprint-authentication = true;
      enable-smartcard-authentication = false;
    };

    "org/gnome/mutter" = {
      dynamic-workspaces = true;
      edge-tiling = false;
      workspaces-only-on-primary = true;
    };

    "org/gnome/nautilus/compression" = {
      default-compression-format = "encrypted_zip";
    };

    "org/gnome/nautilus/preferences" = {
      default-folder-viewer = "list-view";
      migrated-gtk-settings = true;
      search-filter-time-type = "last_modified";
      show-hidden-files = true;
    };

    "org/gnome/settings-daemon/plugins/color" = {
      night-light-enabled = false;
      night-light-schedule-automatic = false;
      night-light-schedule-from = 14.0;
      night-light-schedule-to = 13.0;
      night-light-temperature = mkUint32 2700;
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      area-screenshot = [ "<Primary>4" ];
      area-screenshot-clip = [];
      custom-keybindings = [ "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/" ];
      email = [];
      help = [];
      home = [];
      logout = [];
      magnifier = [];
      magnifier-zoom-in = [];
      magnifier-zoom-out = [];
      screencast = [ "<Primary>6" ];
      screenreader = [];
      screenshot = [ "<Primary>5" ];
      screenshot-clip = [];
      search = [ "<Ctrl>Space" ];
      suspend = [ "<Primary>Delete" ];
      terminal = [ "<Primary>1" ];
      window-screenshot = [];
      window-screenshot-clip = [];
      www = [ "<Primary>2" ];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = "<Primary>3";
      command = "nautilus";
      name = "Launch File Manager";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1" = {
      binding = "<Control>1";
      command = "gnome-terminal";
      name = "Launch Terminal";
    };

    "org/gnome/settings-daemon/plugins/power" = {
      power-saver-profile-on-low-battery = true;
      sleep-inactive-ac-type = "nothing";
    };

    "org/gnome/shell" = {
      command-history = [ "r" ];
      enabled-extensions = [ "dash-to-panel@jderose9.github.com" "pop-shell@system76.com" ];
      favorite-apps = [ "org.mozilla.firefox.desktop" "org.gnome.Calendar.desktop" "org.gnome.Nautilus.desktop" "org.gnome.Software.desktop" "org.gnome.TextEditor.desktop" "org.gnome.Calculator.desktop" ];
      last-selected-power-profile = "power-saver";
    };

    "org/gnome/shell/extensions/dash-to-dock" = {
      extend-height = false;
      manualhide = true;
    };

    # "org/gnome/shell/extensions/dash-to-panel" = {
    #   animate-appicon-hover = false;
    #   animate-appicon-hover-animation-extent = ''
    #     {"RIPPLE":4,"PLANK":4,"SIMPLE":1}
    #   '';

    #   animate-appicon-hover-animation-zoom = ''
    #     {"SIMPLE":2.04,"RIPPLE":1.25,"PLANK":2.0}
    #   '';

    #   animate-show-apps = false;
    #   appicon-margin = 2;
    #   appicon-padding = 2;
    #   appicon-style = "NORMAL";
    #   available-monitors = [ 0 ];
    #   dot-color-1 = "#5294e2";
    #   dot-color-2 = "#5294e2";
    #   dot-color-3 = "#5294e2";
    #   dot-color-4 = "#5294e2";
    #   dot-color-dominant = false;
    #   dot-color-override = false;
    #   dot-color-unfocused-1 = "#5294e2";
    #   dot-color-unfocused-2 = "#5294e2";
    #   dot-color-unfocused-3 = "#5294e2";
    #   dot-color-unfocused-4 = "#5294e2";
    #   dot-position = "LEFT";
    #   dot-size = 0;
    #   dot-style-focused = "METRO";
    #   dot-style-unfocused = "METRO";
    #   extension-version = 68;
    #   focus-highlight = true;
    #   focus-highlight-color = "#9a9996";
    #   focus-highlight-dominant = false;
    #   focus-highlight-opacity = 40;
    #   group-apps = true;
    #   hide-donate-icon-unixtime = "1741763920054";
    #   hotkeys-overlay-combo = "TEMPORARILY";
    #   intellihide = false;
    #   isolate-monitors = false;
    #   isolate-workspaces = false;
    #   leftbox-padding = -1;
    #   leftbox-size = 0;
    #   multi-monitors = false;
    #   overview-click-to-exit = false;
    #   panel-anchors = ''
    #     {"LEN-0x00000000":"MIDDLE","DEL-9ZFV3P3":"MIDDLE"}
    #   '';
    #   panel-element-positions = ''
    #     {"LEN-0x00000000":[{"element":"showAppsButton","visible":false,"position":"stackedTL"},{"element":"activitiesButton","visible":false,"position":"stackedTL"},{"element":"leftBox","visible":true,"position":"stackedTL"},{"element":"dateMenu","visible":true,"position":"stackedTL"},{"element":"taskbar","visible":true,"position":"centerMonitor"},{"element":"rightBox","visible":true,"position":"stackedBR"},{"element":"centerBox","visible":false,"position":"stackedBR"},{"element":"systemMenu","visible":true,"position":"stackedBR"},{"element":"desktopButton","visible":false,"position":"stackedBR"}],"DEL-9ZFV3P3":[{"element":"showAppsButton","visible":false,"position":"stackedTL"},{"element":"activitiesButton","visible":false,"position":"stackedTL"},{"element":"leftBox","visible":false,"position":"stackedTL"},{"element":"dateMenu","visible":true,"position":"stackedTL"},{"element":"taskbar","visible":true,"position":"centerMonitor"},{"element":"rightBox","visible":true,"position":"stackedBR"},{"element":"centerBox","visible":false,"position":"stackedBR"},{"element":"systemMenu","visible":true,"position":"stackedBR"},{"element":"desktopButton","visible":false,"position":"stackedBR"}]}
    #   '';
    #   panel-element-positions-monitors-sync = true;
    #   panel-lengths = ''
    #     {"LEN-0x00000000":100,"DEL-9ZFV3P3":100}
    #   '';
    #   panel-positions = ''
    #     {"LEN-0x00000000":"TOP","DEL-9ZFV3P3":"TOP"}
    #   '';
    #   panel-sizes = ''
    #     {"LEN-0x00000000":24,"DEL-9ZFV3P3":22}
    #   '';
    #   prefs-opened = false;
    #   primary-monitor = "LEN-0x00000000";
    #   show-appmenu = false;
    #   show-apps-icon-file = "";
    #   show-apps-icon-side-padding = 4;
    #   show-favorites = false;
    #   show-favorites-all-monitors = false;
    #   show-running-apps = true;
    #   show-tooltip = false;
    #   show-window-previews = false;
    #   status-icon-padding = -1;
    #   target-prefs-page = "";
    #   trans-bg-color = "#000000";
    #   trans-panel-opacity = 0.55;
    #   trans-use-custom-bg = true;
    #   trans-use-custom-gradient = false;
    #   trans-use-custom-opacity = true;
    #   trans-use-dynamic-opacity = true;
    #   tray-padding = -1;
    #   tray-size = 0;
    #   window-preview-title-font-color = "#dddddd";
    #   window-preview-title-position = "TOP";
    # };

    "org/gnome/shell/extensions/pop-shell" = {
      activate-launcher = [];
      active-hint = true;
      active-hint-border-radius = mkUint32 6;
      focus-down = [ "<Super>k" "<Super>Down" "<Alt>k" ];
      focus-left = [ "<Super>j" "<Super>Left" "<Alt>j" ];
      focus-right = [ "<Super>l" "<Super>Right" "<Alt>l" ];
      focus-up = [ "<Super>Up" "<Super>i" "<Alt>i" ];
      gap-inner = mkUint32 3;
      gap-outer = mkUint32 3;
      hint-color-rgba = "rgba(90,249,201,1.0)";
      management-orientation = [];
      pop-monitor-down = [];
      pop-monitor-left = [ "<Super>n" ];
      pop-monitor-right = [ "<Super>m" ];
      pop-monitor-up = [];
      pop-workspace-down = [];
      pop-workspace-up = [];
      show-title = false;
      smart-gaps = false;
      snap-to-grid = true;
      stacking-with-mouse = false;
      tile-by-default = true;
      tile-orientation = [];
      tile-resize-down = [];
      tile-resize-left = [ "u" ];
      tile-resize-right = [ "o" ];
      tile-resize-up = [];
      tile-swap-down = [];
      tile-swap-left = [];
      tile-swap-right = [];
      tile-swap-up = [];
      toggle-floating = [];
      toggle-stacking = [];
      toggle-stacking-global = [];
    };

    "org/gnome/shell/keybindings" = {
      focus-active-notification = [];
      show-screenshot-ui = [ "<Primary>4" ];
      toggle-application-view = [ "<Super>a" ];
      toggle-message-tray = [];
      toggle-overview = [ "<Super>q" ];
      toggle-quick-settings = [];
    };

    "org/gnome/terminal/legacy" = {
      default-show-menubar = false;
      headerbar = false;
      theme-variant = "system";
    };

    "org/gnome/terminal/legacy/keybindings" = {
      close-tab = "<Primary>w";
      close-window = "<Primary>q";
      find = "<Primary>f";
      find-clear = "disabled";
      find-next = "disabled";
      find-previous = "disabled";
      full-screen = "<Primary>question";
      move-tab-left = "disabled";
      move-tab-right = "disabled";
      new-tab = "<Primary>t";
      new-window = "disabled";
      next-tab = "<Primary>Page_Down";
      preferences = "<Primary>comma";
      prev-tab = "<Primary>Page_Up";
      switch-to-tab-1 = "disabled";
      switch-to-tab-10 = "disabled";
      switch-to-tab-2 = "disabled";
      switch-to-tab-3 = "disabled";
      switch-to-tab-4 = "disabled";
      switch-to-tab-5 = "disabled";
      switch-to-tab-6 = "disabled";
      switch-to-tab-7 = "disabled";
      switch-to-tab-8 = "disabled";
      switch-to-tab-9 = "disabled";
      toggle-menubar = "disabled";
      zoom-in = "<Primary>equal";
    };

    "org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9" = {
      background-color = "rgb(23,20,33)";
      background-transparency-percent = 19;
      bold-is-bright = false;
      custom-command = "nu";
      font = "CodeNewRoman Nerd Font Mono 12";
      foreground-color = "rgb(208,207,204)";
      palette = [ "rgb(12,69,83)" "rgb(220,50,47)" "rgb(133,153,0)" "rgb(181,137,0)" "rgb(38,139,210)" "rgb(211,54,130)" "rgb(42,161,152)" "rgb(238,232,213)" "rgb(56,162,189)" "rgb(203,75,22)" "rgb(88,110,117)" "rgb(101,123,131)" "rgb(131,148,150)" "rgb(108,113,196)" "rgb(147,161,161)" "rgb(253,246,227)" ];
      preserve-working-directory = "always";
      scrollbar-policy = "never";
      use-custom-command = true;
      use-system-font = false;
      use-theme-colors = true;
      use-transparent-background = false;
    };

    "org/gnome/tweaks" = {
      show-extensions-notice = false;
    };

    "org/gtk/gtk4/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = true;
      sidebar-width = 140;
      sort-column = "name";
      sort-directories-first = false;
      sort-order = "ascending";
      type-format = "category";
      view-type = "list";
      window-size = mkTuple [ 960 576 ];
    };
  };
}