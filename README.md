<p align="center">
  <img src="https://raw.githubusercontent.com/selfcommunity/img/main/logo-selfcommunity.png" alt="SelfCommunity API Docs" width="226">
  <br>
  <a href="https://github.com/slatedocs/slate/actions?query=workflow%3ABuild+branch%3Amain"><img src="https://github.com/selfcommunity/api-docs/workflows/Build/badge.svg?branch=main" alt="Build Status"></a>
</p>

Getting Started with Docker
------------------------------
### Dependencies

* [Docker](https://www.docker.com/), see [this page](https://www.docker.com/get-started) for installing Docker Desktop.

### Getting Started

1. Clone *your forked repository* (not our original one) to your hard drive with `git clone https://github.com/selfcommunity/api-docs.git`
2. `cd api-docs`
3. Build the docker image for slate: `docker build . -t api-docs`

### Running

To start a container for slate, run:

```
docker run -d --rm --name api-docs -p 4567:4567 -v $(pwd):/srv/slate api-docs
```

and you will be able to access your site at http://127.0.0.1:4567.

To build your sources while the container is running, run:

```
docker exec -it api-docs /bin/bash -c "bundle exec middleman build"
```

### Stopping Slate

To stop the slate container, run:

```bash
docker stop api-docs
```

Other ways to getting started with Slate
------------------------------

To get started with Slate, please check out the [Getting Started](https://github.com/slatedocs/slate/wiki#getting-started)
section in our [wiki](https://github.com/slatedocs/slate/wiki).

We support running Slate in three different ways:
* [Natively](https://github.com/slatedocs/slate/wiki/Using-Slate-Natively)
* [Using Vagrant](https://github.com/slatedocs/slate/wiki/Using-Slate-in-Vagrant)
* [Using Docker](https://github.com/slatedocs/slate/wiki/Using-Slate-in-Docker)

