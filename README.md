docker-rbenv
============

Create a dokcer container that can take advantage of multiple versions of ruby using rbenv.

## Usage

Add to ```project/.ruby-version``` multiple versions.
For example below

```text
2.0.0-p451
2.1.0
```

You can dcoker provisioning in VM using Vagrant

```sh
# provisioning
vagrant up
```

You can use docker in VM.

```
vagrant ssh
sudo docker run -i -t kazu69/ruby_versions (or you container tag) /bin/bash
```

if not using Vagrant

```
cd project && docker build -t TAG .
```
