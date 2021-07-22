lbign:
	ansible-playbook local.yaml --connection=local
	butane -d output --pretty --strict < output/haproxy.fcc > output/haproxy.ign