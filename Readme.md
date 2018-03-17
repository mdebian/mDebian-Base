# mdebian-base

Customize the Debian system :

- APT :
	- Do not install recommended packages by default
	- Source servers located in France (main, contrib, non-free, backports)
- Banners :
	- Remove the message of the day
	- Display the IP addresses of the host
- BASH :
	- Fancy prompt
	- Aliases
	- Options
	- Completion
	- Local configuration folder (/etc/bashrc.d)
	- Keep SSH_TTY environment variable in sudo (for the fancy prompt)
- GRUB scripts :
	- Zero GRUB timeout
	- Reinstall GRUB EFI
- Minicom :
	- 9600bps 8N1 on /dev/ttyS0
- Nano :
	- Syntax highlighting for conf files
- Sysctl :
	- Enable IPv6 temporary addresses on all network interfaces
- Systemd :
	- Synchronize the local time with the french NTP servers
