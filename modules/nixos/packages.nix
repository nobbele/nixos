{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    neovim
    wget
    git
    htop
    trash-cli
    gparted
    mpv
    clang
    gcc
    gnumake
    openssl
    distrobox
    cmake
    (with dotnetCorePackages; combinePackages [
      sdk_7_0
      sdk_8_0
    ])
    nodejs
    # inputs.lemurs.packages."${system}".default
    aseprite
    # kitty
    icu
  ];
}
