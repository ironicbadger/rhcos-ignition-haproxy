# ironicbadger/rhcos-ignition-haproxy

This is an example repo to generate a HAProxy config and convert it to an ignition file suitable for use with Red Hat CoreOS.

## Usage

You will need to install Ansible and [Butane](https://docs.fedoraproject.org/en-US/fedora-coreos/producing-ign/) locally. Then examine the Makefile for the required commands.

```
# using the makefile
    make lbign

# manually
	ansible-playbook local.yaml --connection=local
	butane -d output --pretty --strict < output/haproxy.fcc > output/haproxy.ign
```

In both cases the file output to `output/haproxy.ign` is an Ignition file suitable for ingestion by RHCOS. It will create a contain automatically running Haproxy via podman.

For real world usage this should be adapted into a standalone role and the values in defaults should be customized.