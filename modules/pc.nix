{
  config,
  inputs,
  ...
}: {
  flake.modules.nixos.pc.imports = with config.flake.modules.nixos; [
    base
    inputs.disko.nixosModules.disko
  ];
}
