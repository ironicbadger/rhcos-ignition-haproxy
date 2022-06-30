lbign:
	ansible-playbook local.yaml --connection=local
	butane -d output --pretty --strict < output/haproxy-master.fcc > output/haproxy-master.ign
	butane -d output --pretty --strict < output/haproxy-backup.fcc > output/haproxy-backup.ign