{ config, lib, pkgs, ... }:

{
  programs.vscode = {
    enable = true;
    package = pkgs.vscode;
    profiles.default = {

      
      extensions = with pkgs.vscode-marketplace; [
        rust-lang.rust-analyzer
        tamasfe.even-better-toml
        myriad-dreamin.tinymist
        streetsidesoftware.code-spell-checker
        corentinartaud.pdfpreview
        mandeepsran.gruvbox-black
      ];


      keybindings = [
        {
          key = "ctrl+shift+t";
          command = "-workbench.action.reopenClosedEditor";
        }
        {
          key = "ctrl+t";
          command = "-workbench.action.showAllSymbols";
        }
        {
          key = "ctrl+t";
          command = "workbench.action.terminal.toggleTerminal";
          when = "terminal.active";
        }
        {
          key = "ctrl+`";
          command = "-workbench.action.terminal.toggleTerminal";
          when = "terminal.active";
        }
        {
          key = "ctrl+j";
          command = "-workbench.action.togglePanel";
        }
        {
          key = "ctrl+b";
          command = "-workbench.action.toggleSidebarVisibility";
        }
        {
          key = "ctrl+shift+down";
          command = "editor.action.copyLinesDownAction";
          when = "editorTextFocus && !editorReadonly";
        }
        {
          key = "ctrl+shift+alt+down";
          command = "-editor.action.copyLinesDownAction";
          when = "editorTextFocus && !editorReadonly";
        }
        {
          key = "ctrl+shift+up";
          command = "editor.action.copyLinesUpAction";
          when = "editorTextFocus && !editorReadonly";
        }
        {
          key = "ctrl+shift+alt+up";
          command = "-editor.action.copyLinesUpAction";
          when = "editorTextFocus && !editorReadonly";
        }
        {
          key = "ctrl+tab";
          command = "-workbench.action.quickOpenPreviousRecentlyUsedEditorInGroup";
        }
        {
          key = "ctrl+shift+tab";
          command = "workbench.action.previousEditor";
        }
        {
          key = "ctrl+pageup";
          command = "-workbench.action.previousEditor";
        }
        {
          key = "ctrl+tab";
          command = "workbench.action.nextEditor";
        }
        {
          key = "ctrl+pagedown";
          command = "-workbench.action.nextEditor";
        }
        {
          key = "alt+up";
          command = "editor.action.insertCursorAbove";
          when = "editorTextFocus";
        }
        {
          key = "ctrl+shift+up";
          command = "-editor.action.insertCursorAbove";
          when = "editorTextFocus";
        }
        {
          key = "alt+down";
          command = "editor.action.insertCursorBelow";
          when = "editorTextFocus";
        }
        {
          key = "ctrl+shift+down";
          command = "-editor.action.insertCursorBelow";
          when = "editorTextFocus";
        }
        {
          key = "ctrl+down";
          command = "editor.action.moveLinesDownAction";
          when = "editorTextFocus && !editorReadonly";
        }
        {
          key = "alt+down";
          command = "-editor.action.moveLinesDownAction";
          when = "editorTextFocus && !editorReadonly";
        }
        {
          key = "ctrl+up";
          command = "editor.action.moveLinesUpAction";
          when = "editorTextFocus && !editorReadonly";
        }
        {
          key = "alt+up";
          command = "-editor.action.moveLinesUpAction";
          when = "editorTextFocus && !editorReadonly";
        }
        {
          key = "ctrl+shift+.";
          command = "workbench.action.positionPanelRight";
        }
        {
          key = "ctrl+shift+,";
          command = "workbench.action.positionPanelBottom";
        }
        {
          key = "ctrl+meta+f";
          command = "workbench.action.toggleFullScreen";
          when = "!isIOS";
        }
        {
          key = "f11";
          command = "-workbench.action.toggleFullScreen";
          when = "!isIOS";
        }
        {
          key = "ctrl+shift+/";
          command = "workbench.action.toggleMaximizedPanel";
        }
        {
          key = "ctrl+shift+'";
          command = "editor.action.toggleRenderWhitespace";
        }
        {
          key = "ctrl+shift+;";
          command = "-breadcrumbs.focus";
          when = "breadcrumbsPossible";
        }
        {
          key = "ctrl+shift+;";
          command = "editor.action.toggleWordWrap";
        }
        {
          key = "alt+z";
          command = "-editor.action.toggleWordWrap";
        }
        {
          key = "ctrl+=";
          command = "-workbench.action.zoomIn";
        }
        {
          key = "ctrl+-";
          command = "-workbench.action.zoomOut";
        }
        {
          key = "ctrl+=";
          command = "editor.action.fontZoomIn";
        }
        {
          key = "ctrl+-";
          command = "editor.action.fontZoomOut";
        }
        {
          key = "ctrl+0";
          command = "editor.action.fontZoomReset";
        }
        {
          key = "ctrl+shift+-";
          command = "workbench.action.zoomOut";
        }
        {
          key = "ctrl+`";
          command = "editor.action.revealDefinition";
        }
        {
          key = "ctrl+shift+[";
          command = "-editor.fold";
          when = "editorTextFocus && foldingEnabled";
        }
        {
          key = "ctrl+shift+]";
          command = "-editor.unfold";
          when = "editorTextFocus && foldingEnabled";
        }
        {
          key = "ctrl+shift+k";
          command = "workbench.action.toggleZenMode";
        }
        {
          key = "ctrl+k z";
          command = "-workbench.action.toggleZenMode";
        }
        {
          key = "ctrl+shift+p";
          command = "workbench.action.quickOpenWithModes";
        }
        {
          key = "ctrl+alt+=";
          command = "untabify";
        }
        {
          key = "ctrl+u";
          command = "-cursorUndo";
          when = "textInputFocus";
        }
        {
          key = "ctrl+u";
          command = "editor.action.transformToUppercase";
        }
        {
          key = "ctrl+l";
          command = "editor.action.transformToLowercase";
        }
        {
          key = "ctrl+j";
          command = "workbench.view.explorer";
        }
        {
          key = "ctrl+j";
          command = "-workbench.view.explorer";
          when = "!explorerViewletVisible";
        }
        {
          key = "ctrl+j";
          command = "workbench.action.toggleSidebarVisibility";
          when = "explorerViewletVisible";
        }
        {
          key = "ctrl+shift+f";
          command = "workbench.view.search";
        }
        {
          key = "ctrl+shift+f";
          command = "-workbench.view.search";
          when = "!searchViewletVisible";
        }
        {
          key = "ctrl+shift+f";
          command = "workbench.action.toggleSidebarVisibility";
          when = "searchViewletVisible";
        }
        {
          key = "ctrl+h";
          command = "workbench.view.scm";
        }
        {
          key = "ctrl+h";
          command = "-workbench.view.scm";
          when = "!scmViewletVisible";
        }
        {
          key = "ctrl+h";
          command = "-editor.action.startFindReplaceAction";
          when = "editorFocus || editorIsOpen";
        }
        {
          key = "ctrl+f";
          command = "-actions.find";
          when = "editorFocus || editorIsOpen";
        }
        {
          key = "ctrl+f";
          command = "actions.find";
        }
        {
          key = "ctrl+shift+l";
          command = "editor.action.selectHighlights";
          when = "editorFocus";
        }
        {
          key = "ctrl+shift+l";
          command = "addCursorsAtSearchResults";
          when = "fileMatchOrMatchFocus && searchViewletVisible";
        }
        {
          key = "ctrl+o";
          command = "workbench.action.splitEditorRight";
        }
        {
          key = "ctrl+r";
          command = "workbench.action.quickOpenLeastRecentlyUsedEditor";
        }
        {
          key = "ctrl+shift+n";
          command = "explorer.newFile";
        }
        {
          key = "ctrl+b";
          command = "workbench.action.navigateBack";
        }
        {
          key = "ctrl+shift+m";
          command = "workbench.action.positionPanelLeft";
        }
        {
          key = "ctrl+e";
          command = "-workbench.action.quickOpen";
        }
        {
          key = "ctrl+e";
          command = "workbench.action.terminal.focus";
        }
        {
          key = "ctrl+e";
          command = "workbench.action.focusActiveEditorGroup";
          when = "terminalFocus";
        }
        {
          key = "ctrl+pageup";
          command = "workbench.action.terminal.focusNext";
          when = "terminalFocus";
        }
        {
          key = "ctrl+shift+n";
          command = "workbench.action.terminal.new";
          when = "terminalFocus";
        }
        {
          key = "ctrl+/";
          command = "workbench.action.terminal.split";
          when = "terminalFocus";
        }
        {
          key = "alt+down";
          command = "workbench.action.terminal.focusNextPane";
          when = "terminalFocus";
        }
        {
          key = "alt+up";
          command = "workbench.action.terminal.focusPreviousPane";
          when = "terminalFocus";
        }
        {
          key = "ctrl+shift+y";
          command = "workbench.view.extension.vscode-serial-monitor-tools";
        }
        {
          key = "ctrl+shift+g";
          command = "workbench.action.toggleCenteredLayout";
        }
        {
          key = "pagedown";
          command = "workbench.action.increaseViewSize";
        }
        {
          key = "pageup";
          command = "workbench.action.decreaseViewSize";
        }
        {
          key = "pageup";
          command = "workbench.action.terminal.resizePaneRight";
        }
        {
          key = "ctrl+pagedown";
          command = "workbench.action.terminal.focusPrevious";
        }
        {
          key = "ctrl+shift+b";
          command = "explorer.newFolder";
        }
        {
          key = "pagedown";
          command = "workbench.action.terminal.resizePaneLeft";
        }
        {
          key = "ctrl+m";
          command = "quickSelect.cursorQuoteSelect";
        }
        {
          key = "ctrl+shift+r";
          command = "editor.action.rename";
          when = "editorHasRenameProvider && editorTextFocus && !editorReadonly";
        }
        {
          key = "f2";
          command = "-editor.action.rename";
          when = "editorHasRenameProvider && editorTextFocus && !editorReadonly";
        }
        {
          key = "ctrl+shift+r";
          command = "renameFile";
          when = "filesExplorerFocus && foldersViewVisible && !explorerResourceIsRoot && !explorerResourceReadonly && !inputFocus";
        }
        {
          key = "f2";
          command = "-renameFile";
          when = "filesExplorerFocus && foldersViewVisible && !explorerResourceIsRoot && !explorerResourceReadonly && !inputFocus";
        }
        {
          key = "ctrl+shift+r";
          command = "workbench.action.terminal.renameActiveTab";
          when = "terminalHasBeenCreated && terminalTabsFocus && terminalTabsSingularSelection || terminalProcessSupported && terminalTabsFocus && terminalTabsSingularSelection";
        }
        {
          key = "f2";
          command = "-workbench.action.terminal.renameActiveTab";
          when = "terminalHasBeenCreated && terminalTabsFocus && terminalTabsSingularSelection || terminalProcessSupported && terminalTabsFocus && terminalTabsSingularSelection";
        }
      ];
      userSettings = {
        "workbench.startupEditor" = "none";
        "telemetry.telemetryLevel" = "off";
        "files.autoSave" = "afterDelay";
        "editor.tabSize" = 4;
        "explorer.confirmDragAndDrop" = false;
        "rst.preview.pythonPath" = "python3";
        "editor.renderControlCharacters" = true;
        "editor.renderWhitespace" = "none";
        "editor.renderLineHighlightOnlyWhenFocus" = true;
        "editor.wordWrap" = "on";
        "cmake.configureOnOpen" = false;
        "terminal.integrated.persistentSessionReviveProcess" = "never";
        "terminal.integrated.enablePersistentSessions" = false;
        "workbench.preferredDarkColorTheme" = "Gruvbox Black";
        "workbench.preferredHighContrastLightColorTheme" = "monokai-charcoal (gray)";
        "rust-analyzer.inlayHints.enable" = false;
        "workbench.editorAssociations" = {
          "*.html" = "default";
        };
        "workbench.colorCustomizations" = {
          # "activityBar.background" = "#a8d8e322";
          "tab.activeBackground" = "#76ffaf23";
          "tab.activeBorder" = "#00ff6abc";
          # "tab.activeBorderTop" = "#00ff6abc";
        };
        "rust-analyzer.inlayHints.parameterHints.enable" = false;
        "rust-analyzer.inlayHints.typeHints.enable" = false;
        "extensions.ignoreRecommendations" = true;
        "terminal.integrated.enableMultiLinePasteWarning" = false;
        "security.workspace.trust.untrustedFiles" = "open";
        "workbench.preferredLightColorTheme" = "Default Light Modern";
        "window.autoDetectHighContrast" = false;
        "window.autoDetectColorScheme" = true;
        "svelte.enable-ts-plugin" = true;
        "workbench.editorLargeFileConfirmation" = 1048576;
        "files.maxMemoryForLargeFilesMB" = 8192;
        "terminal.integrated.tabStopWidth" = 4;
        "workbench.editor.enablePreview" = false;
        "editor.minimap.enabled" = false;
        "cSpell.enableFiletypes" = [
          "typst"
        ];
        "zenMode.hideLineNumbers" = false;
        "zenMode.centerLayout" = false;
        "workbench.colorTheme" = "Solarized Light";
        "terminal.integrated.commandsToSkipShell" = [
          "workbench.view.explorer"
          "workbench.action.toggleSidebarVisibility"
          "language-julia.interrupt"
        ];
        "terminal.integrated.scrollback" = 50000;
        "window.commandCenter" = false;
        "julia.symbolCacheDownload" = true;
        "julia.executablePath" = "/opt/julia-1.9.3/bin/julia";
        "julia.enableTelemetry" = false;
        "workbench.panel.defaultLocation" = "left";
        "editor.rulers" = [ 100 ];
        "editor.fontFamily" = "'CodeNewRoman Nerd Font Mono', 'monospace', monospace";
        "git.openRepositoryInParentFolders" = "never";
        "[typescript]" = {
          "editor.defaultFormatter" = "esbenp.prettier-vscode";
        };
        "editor.formatOnSave" = true;
        "clangd.path" = "/home/max/.config/Code/User/globalStorage/llvm-vs-code-extensions.vscode-clangd/install/18.1.3/clangd_18.1.3/bin/clangd";
        "window.titleBarStyle" = "custom";
        "python.terminal.activateEnvironment" = false;
        "editor.semanticTokenColorCustomizations" = {
          "enabled" = true;
        };
        "workbench.editor.showTabs" = "none";
        "zenMode.showTabs" = "none";
        "window.enableMenuBarMnemonics" = false;
        "window.customMenuBarAltFocus" = false;
        "[typst]" = {
          "editor.wordSeparators" = "`~!@#$%^&*()=+[{]}\\|;:'\",.<>/?";
        };
        "[typst-code]" = {
          "editor.wordSeparators" = "`~!@#$%^&*()=+[{]}\\|;:'\",.<>/?";
        };
        "terminal.integrated.defaultProfile.linux" = "bash";
        "chat.commandCenter.enabled" = false;
        "makefile.configureOnOpen" = false;
        "window.customTitleBarVisibility" = "windowed";
        "tinymist.preview.invertColors" = "auto";
        "window.confirmBeforeClose" = "keyboardOnly";
      };
    };
  };
}