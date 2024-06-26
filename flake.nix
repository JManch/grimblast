{
  description = "Hypr Development Contrib";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }:
    let
      genSystems = nixpkgs.lib.genAttrs [
        "x86_64-linux"
        "aarch64-linux"
      ];
      pkgsFor = nixpkgs.legacyPackages;
    in
    {
      overlays.default = _: prev: {
        grimblast = prev.callPackage ./. { hyprland = null; };
      };

      packages = genSystems (system: self.overlays.default null pkgsFor.${system});
    };
}
