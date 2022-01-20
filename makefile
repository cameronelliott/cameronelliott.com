IP=143.198.76.122

all:
	rsync -ar --del . root@$(IP):/var/www/html/cameronelliott
# nope deadsfu does this
#	scp Caddyfile root@$(IP):/etc/caddy
	scp cameronelliott.caddy root@$(IP):/etc/caddy
	ssh root@$(IP) chmod 755 /etc/caddy/\*
	ssh root@$(IP) systemctl reload caddy
