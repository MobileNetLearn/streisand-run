A docker container with the latest prerequisites installed to run [Streisand](https://github.com/jlund/streisand) and setup your own privacy server quickly.

**Silence censorship. Automate the [effect](https://en.wikipedia.org/wiki/Streisand_effect).**

![Streisand Logo](https://raw.githubusercontent.com/ryanjohnston/streisand-run/master/logo.jpg "Automate the effect")

# Streisand Application Runner

From the Steisand project [https://github.com/jlund/streisand](https://github.com/jlund/streisand):

"Streisand sets up a new server running L2TP/IPsec, OpenConnect, OpenSSH, OpenVPN, Shadowsocks, sslh, Stunnel, a Tor bridge, and WireGuard. It also generates custom instructions for all of these services. At the end of the run you are given an HTML file with instructions that can be shared with friends, family members, and fellow activists."

# Quick Start

Option 1 - Included is a script (``run.sh``) that will clone the Streisand project and execute the application via Docker.

```
$> git clone git@github.com:ryanjohnston/streisand-run.git
$> cd streisand-run
$> ./run.sh
```

Option 2 - Build container and run

To build the container:

```
$> git clone git@github.com:ryanjohnston/streisand-run.git
$> cd streisand-run
$> docker build -t streisand-run .
$> docker run -it --rm --name streisand -v "$PWD":/usr/src/myapp:cached -w /usr/src/myapp -v "$HOME"/.ssh:/root/.ssh streisand-run bash ./streisand
```

**Public SSH key in your home directory is required. See [Streisand](https://github.com/jlund/streisand) for more details.**

This should work on any platform that supports Docker (Linux, MacOS, Windows).

Please note that this project is released with a [Contributor Code of Conduct](code-of-conduct.md). By participating in this project you agree to abide by its terms.

MIT License
Copyright (c) 2017 Ryan Johnston <ryanj@ryanj.org>
