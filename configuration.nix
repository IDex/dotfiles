# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Use the GRUB 2 boot loader.
  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  # Define on which hard drive you want to install Grub.
  boot.loader.grub.device = "/dev/sda";

  networking.hostName = "nixos"; # Define your hostname.
  networking.networkmanager.enable = true;
  #networking.wireless.enable = true;  # Enables wireless.

  hardware.pulseaudio.enable = true;

  # Select internationalisation properties.
   i18n = {
  #   consoleFont = "lat9w-16";
     consoleKeyMap = "fi";
     defaultLocale = "en_US.UTF-8";
   };
  users.extraUsers.ide = {
    createHome = true;
    home = "/home/ide";
    extraGroups = [ "wheel" "networkmanager" ];
    isSystemUser = false;
    useDefaultShell = true;
    };
  environment.systemPackages = with pkgs; [
    chromium
    mplayer
    vim
    htop
    pa_applet
    networkmanagerapplet
    audacious
    i3status
    i3lock
    dmenu
    youtubeDL
    ];  
 
  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Enable CUPS to print documents.
  # services.printing.enable = true;

  # Enable the X11 windowing system.
   services.xserver.enable = true;
   services.xserver.layout = "fi";
   services.xserver.xkbOptions = "eurosign:e";

  # Enable the KDE Desktop Environment.
   services.xserver.displayManager.kdm.enable = true;
   services.xserver.desktopManager.kde4.enable = true;
   services.xserver.windowManager.i3.enable =true;
}
