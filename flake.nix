{
  description =
    "Flake with the tools to be used during the Computer architecture course @Utec.";

  inputs = {

    flakelight.url = "github:nix-community/flakelight";

  };

  outputs = { flakelight, ... }:
    flakelight ./. {
      devShell.packages = pkgs:
        with pkgs; [

          verilog

          coreutils

        ];
    };

}
