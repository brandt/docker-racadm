# racadm-docker

Allows you to execute `racadm` from an unsupported system by wrapping it in Docker.

## Installing

If using `docker-machine`, make sure it's already sourced into your environment: `eval $(docker-machine env)`

    git clone https://github.com/brandt/racadm-docker.git
    cd racadm-docker
    make install

A shell script called `racadm` will be installed into your `~/bin`.

## Usage

Note: Make sure `~/bin` is in your `$PATH`.

Use just like you would `racadm`.

### Sharing Files

A shared directory is automatically mounted in case you need to exchange files with the container:

Container: `/shared`
Host: `~/.local/share/racadm-docker`


## Warning

I just whipped this up and haven't had a chance to use it much yet.


## Author

- J. Brandt Buckley <brandt@runlevel1.com>
