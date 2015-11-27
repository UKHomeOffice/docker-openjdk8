# Docker Java JDK Container

[![Build Status](https://travis-ci.org/UKHomeOffice/docker-openjdk8.svg?branch=master)](https://travis-ci.org/UKHomeOffice/docker-openjdk8)

Docker container that also includes Open Java 8 *JDK* install for running containerized builds.

## Getting Started

These instructions will cover usage information and for the docker container 

### Prerequisites

In order to run this container you'll need docker installed.

* [Windows](https://docs.docker.com/windows/started)
* [OS X](https://docs.docker.com/mac/started/)
* [Linux](https://docs.docker.com/linux/started/)

### Usage

The example below, runs a Java (gradle) build:

```
docker run -i --rm=true \
        -v ${BUILD_HOME_DIR}:/code \
        -e BUILD_NUMBER=${BUILD_NUMBER} \
        -v ${GRADLE_CACHE}:/root/.gradle/caches \
        quay.io/ukhomeofficedigital/openjdk8:v0.1.2 \
        ./gradlew "$@"
```

## Contributing

Feel free to submit pull requests and issues. If it's a particularly large PR, you may wish to discuss
it in an issue first.

Please note that this project is released with a [Contributor Code of Conduct](code_of_conduct.md). 
By participating in this project you agree to abide by its terms.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the 
[tags on this repository](https://github.com/UKHomeOffice/docker-openjdk8/tags). 

## Authors

* **Lewis Marshall** - *Initial work* - [Lewis Marshall](https://github.com/LewisMarshall)

See also the list of [contributors](https://github.com/UKHomeOffice/docker-openjdk8/contributors) who 
participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

## Acknowledgments

* [OpenJDK8](http://openjdk.java.net/projects/jdk8/)
