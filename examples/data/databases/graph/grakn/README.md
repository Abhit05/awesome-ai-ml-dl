# Grakn and Graql

Run [Grakn and Graql](http://grakn.ai) in a docker container running under the traditional Java 8 (from OpenJDK or another source).

Find out more about [Grakn and Graql](http://grakn.ai) from the [Data](../../../../../data/README.md#databases) section.

On start, useful details including time to startup Grakn and duration for which Graql was run are printed.

## Goals

- Run Grakn and Graql in a docker container
- Ability to create custom docker images (scripts & docs provided)
- Measure startup and execution times
- Run using the traditional JDK (OpenJDK or vendor specific versions)

## Scripts provided

**Go to [the previous folder](../grakn) to find the below scripts.**

- `runGraknInDocker.sh` - runs the container which then calls `startGraknAndGraql.sh` inside the container and the rest is history.  Exposes the Grakn port 4567, so the dashboard can be opened at http://localhost:8080. The graql console is also available in the window running the docker instance.
- `startGraknAndGraql.sh` - entry point script baked into the docker image
- `Dockerfile`: a dockerfile script to help build a docker image of Grakn and Graql in an isolated environment with the necessary dependencies.
- `buildDockerImage.sh`: build the docker image for grakn, takes under 5 minutes to finish on a decent connection
- `push-grakn-docker-image-to-hub.sh` - push pre-built docker image to docker hub (please pass in your own Docker username and later on enter Docker login details, see usage below)
- `removeUnusedContainersAndImages.sh` - a housekeeping script to remove dangling images and terminated containers (helps save some diskspace)

## Usage

**Setting your environment**

Ensure your environment has the below variable set, or set it in your .bashrc or .bash_profile or the relevant startup script:

```
export DOCKER_USER_NAME="your_docker_username"
```

You must have an account on Docker hub under the above user name.

# Contributing

Contributions are very welcome, please share back with the wider community (and get credited for it)!

Please have a look at the [CONTRIBUTING](CONTRIBUTING.md) guidelines, also have a read about our [licensing](LICENSE.md) policy.

---

Back to [Data](../../../../../data/README.md)</br>
Back to [main page (table of contents)](../../../../README.md)