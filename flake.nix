{
  inputs.yants.url = "github:divnix/yants";
  inputs.nixlib.url = "github:nix-community/nixpkgs.lib";
  inputs.POP.url = "github:divnix/POP/extenders";

  # Development Dependencies
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-22.05";

  outputs = {
    self,
    yants,
    nixlib,
    POP,
    nixpkgs,
  }: let
    lib = POP.lib // nixlib.lib;
  in {
    lib = {
      alertlist = import ./alertlist.nix {inherit lib;};
      alert = import ./alert_condition.nix {inherit lib;};
      annotation = import ./annotation.nix {inherit lib;};
      bar_guage_panel = import ./bar_gauge_panel.nix {inherit lib;};
      cloudmonitoring = import ./cloudmonitoring.nix {inherit lib;};
      cloudwatch = import ./cloudwatch.nix {inherit lib;};
      dashboard = import ./dashboard.nix {inherit lib;};
      dashlist = import ./dashlist.nix {inherit lib;};
      elasticsearch = import ./elasticsearch.nix {inherit lib;};
      gauge_panel = import ./gauge_panel.nix {inherit lib;};
      graphite = import ./graphite.nix {inherit lib;};
      graph_panel = import ./graph_panel.nix {inherit lib;};
      heatmap_panel = import ./heatmap_panel.nix {inherit lib;};
      influxdb = import ./influxdb.nix {inherit lib;};
      link = import ./link.nix {inherit lib;};
      log_panel = import ./log_panel.nix {inherit lib;};
      loki = import ./loki.nix {inherit lib;};
      pie_chart_panel = import ./pie_chart_panel.nix {inherit lib;};
      pluginlist = import ./pluginlist.nix {inherit lib;};
      prometheus = import ./prometheus.nix {inherit lib;};
      row = import ./row.nix {inherit lib;};
      singlestat = import ./singlestat.nix {inherit lib;};
      sql = import ./sql.nix {inherit lib;};
      stat_panel = import ./stat_panel.nix {inherit lib;};
      table_panel = import ./table_panel.nix {inherit lib;};
      template = import ./template.nix {inherit lib;};
      text = import ./text.nix {inherit lib;};
      timepicker = import ./timepicker.nix {inherit lib;};
      transformation = import ./transformation.nix {inherit lib;};
    };
    formatter.x86_64-linux = nixpkgs.legacyPackages.x86_64-linux.alejandra;
    formatter.aarch64-linux = nixpkgs.legacyPackages.aarch64-linux.alejandra;
    formatter.x86_64-darwin = nixpkgs.legacyPackages.x86_64-darwin.alejandra;
  };
}
