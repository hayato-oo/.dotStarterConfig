{ ... }:
{
  imports = [
    ./programs/dell.nix
    ./programs/filemanager.nix
    ./programs/misc.nix
    ./programs/terminal.nix
    ./programs/tools.nix
    ./services/greetd.nix
    ./services/ssh.nix
    ./services/dbus.nix
    ./services/mpd.nix
    ./users
    ./virtualization
  ];
}
