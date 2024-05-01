CD into nixos folder and run flake init to create a template file
```
cd /etc/nixos
sudo nix flake init
```

Edit the flake.nix file with the [template provided](https://github.com/mcnlty/flake-config/blob/main/default/flake.nix)
```
sudo vim flake.nix
```

Rebuild system with the new command
```
sudo nixos-rebuild switch --flake /etc/nixos/#default
```

Once you change your hostname in the flake.nix file. You can change #default in the rebuild command e.g.
```
sudo nixos-rebuild switch --flake /etc/nixos/#nixgamingpc
```
