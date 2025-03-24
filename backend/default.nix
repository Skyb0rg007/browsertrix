{ pkgs ? import <nixpkgs> {} }:
let
  pythonPackages = pkgs.python312Packages;
in
pythonPackages.buildPythonApplication {
  pname = "browsertrix-backend";
  version = "1.14.6";
  pyproject = true;

  src = ./.;

  build-system = [pythonPackages.hatchling];
}
