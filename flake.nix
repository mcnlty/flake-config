# https://github.com/vimjoyer/flake-starter-config/blob/main/flake.nix
{
  description = "Nix Flakes Config Template";

  outputs = { self }: {

    templates = {

      example = {
        path = ./default;
        description = "Nix Flakes Config Template";
      };

    };

    defaultTemplate = self.templates.example;

  };
}
