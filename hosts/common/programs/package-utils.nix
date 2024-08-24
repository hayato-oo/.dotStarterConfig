{ inputs, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [ 
    home-manager
    hyprutils
    egl-wayland
    # FLAKED
    #inputs.nix-inspect.packages.${pkgs.system}.default

    # PKG UTILS
    fd
    shellcheck
    ripgrep
    openssl
    #acpi
    pciutils
    glib-networking
    git
    curl
    jq
    coreutils
    usbutils
    dmidecode
    ntfs3g
    iw
    nil
    libva-utils
    dbus
    parted
    wayland-protocols
    wayland-utils
    wlroots
    xwaylandvideobridge
    #intel-gpu-tools
    vdpauinfo
    nix-prefetch-git
    fzf
    wirelesstools
    socat
    #rust-bin.stable.latest.default
    cage
    brightnessctl
    playerctl
    wl-gammarelay-rs
    file
    libglvnd
    libwebp
    libxkbcommon
    upower
    libdbusmenu-gtk3
    gobject-introspection
    gjs
    glib
    gtk-layer-shell
    gtk3
    gtk4
    meson
    dart-sass
    eza
    bat
    pipewire
    mpd
    mpv
    mpc-cli
    networkmanagerapplet
    dmenu
    gtk3.dev
    gtk-layer-shell.dev
    pango.dev
    gdk-pixbuf.dev
    cairo.dev
    glib.dev
    libgcc
    bluez
    code-minimap
    pamixer
    libnotify
    cifs-utils
  ];

}
