CD into nixos folder and run flake init to create a template file
```
cd /etc/nixos
sudo nix flake init --template github:mcnlty/flake-config
```

Rebuild system with the new command
```
sudo nixos-rebuild switch --flake /etc/nixos/#default
```

Once you change your hostname in the flake.nix file. You can change #default in the rebuild command e.g.
```
sudo nixos-rebuild switch --flake /etc/nixos/#nixgamingpc
```

---
We can also move the configuration.nix and hardware-configuration.nix to a new folder for example /etc/nixos/hosts/nixgamingpc/

We can then edit the flake.nix "modules = [./configuration.nix];" section
```
      modules = [./hosts/nixgamingpc/configuration.nix];
```
