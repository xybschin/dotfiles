# The IP address of the host to setup nix on.
NIXADDR ?= unset
# The port used by the sshd service.
NIXPORT ?= 22
# The name of the configuration in flake.nix.
NIXNAME ?= vm-x86_64
# The name of the user that is used to set up the target.
NIXUSER ?= root
# The path to this Makefile. Used to copy required files to the target.
MAKEFILE_DIR := $(patsubst %/,%,$(dir $(abspath $(lastword $(MAKEFILE_LIST)))))
# Just for reuability.
SSH_OPTIONS=-o PubkeyAuthentication=no -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -p${NIXPORT}

vm/install-os:
	ssh $(SSH_OPTIONS) ${NIXUSER}@$(NIXADDR) " \
		parted /dev/sda -- mklabel gpt; \
		parted /dev/sda -- mkpart primary 512MB -8GB; \
		parted /dev/sda -- mkpart primary linux-swap -8GB 100\%; \
		parted /dev/sda -- mkpart ESP fat32 1MB 512MB; \
		parted /dev/sda -- set 3 esp on; \
		sleep 1; \
		mkfs.ext4 -L nixos /dev/sda1; \
		mkswap -L swap /dev/sda2; \
		mkfs.fat -F 32 -n boot /dev/sda3; \
		sleep 1; \
		mount /dev/disk/by-label/nixos /mnt; \
		mkdir -p /mnt/boot; \
		mount /dev/disk/by-label/boot /mnt/boot; \
		nixos-generate-config --root /mnt; \
		sed --in-place '/system\.stateVersion = .*/a \
			nix.package = pkgs.nixVersions.latest;\n \
			nix.extraOptions = \"experimental-features = nix-command flakes\";\n \
  		services.openssh.enable = true;\n \
			services.openssh.settings.PasswordAuthentication = true;\n \
			services.openssh.settings.PermitRootLogin = \"yes\";\n \
			users.users.root.initialPassword = \"root\";\n \
		' /mnt/etc/nixos/configuration.nix; \
		nixos-install --no-root-passwd && reboot; \
	"

vm/copy:
	rsync -av -e 'ssh $(SSH_OPTIONS)' \
		--rsync-path="sudo rsync" \
		--chown=$(NIXUSER):$(NIXUSER) \
		$(MAKEFILE_DIR) $(NIXUSER)@$(NIXADDR):/

vm/switch:
	ssh $(SSH_OPTIONS) $(NIXUSER)@$(NIXADDR) " \
		sudo NIXPKGS_ALLOW_UNSUPPORTED_SYSTEM=1 nixos-rebuild switch --flake \"/nixos-config#${NIXNAME}\" \
	"
