# Keycloak

Keycloak is an Open Source Identity and Access Management solution for modern Applications and Services.

This repository contains the source code for the Keycloak Server, Java adapters and the JavaScript adapter.


## moneymeets Specific Fixes

At moneymeets the repository keycloak-docker is used to set up and run Keycloak. Internally, it creates a docker container containing Keycloak based on the source of the latest commit in branch moneymeets/20.0.5 of this repository here.
This fork was created so that moneymeets is able to implement fixes that are not available yet or only available in later Keycloak versions.
Currently, the following fixes are present in the code:

* Back port of fix [keycloak/keycloak#15619](https://github.com/keycloak/keycloak/pull/15619).
* MD-6782 Fix update email via impersonated user
* MD-6762 Datasource 'default': JDBC resources leaked
* MD-6730 fix email validation to be RFC compliant.


## Help and Documentation

* [Documentation](https://www.keycloak.org/documentation.html)
* [User Mailing List](https://groups.google.com/d/forum/keycloak-user) - Mailing list for help and general questions about Keycloak


## Reporting Security Vulnerabilities

If you've found a security vulnerability, please look at the [instructions on how to properly report it](https://github.com/keycloak/keycloak/security/policy)


## Reporting an issue

If you believe you have discovered a defect in Keycloak, please open [an issue](https://github.com/keycloak/keycloak/issues).
Please remember to provide a good summary, description as well as steps to reproduce the issue.


## Getting started

To run Keycloak, download the distribution from our [website](https://www.keycloak.org/downloads.html). Unzip and run:

    bin/kc.[sh|bat] start-dev

Alternatively, you can use the Docker image by running:

    docker run quay.io/keycloak/keycloak start-dev
    
For more details refer to the [Keycloak Documentation](https://www.keycloak.org/documentation.html).


## Building from Source

To build from source, refer to the [building and working with the code base](docs/building.md) guide.


### Testing

To run tests, refer to the [running tests](docs/tests.md) guide.


### Writing Tests

To write tests, refer to the [writing tests](docs/tests-development.md) guide.


## Contributing

Before contributing to Keycloak, please read our [contributing guidelines](CONTRIBUTING.md).


## Other Keycloak Projects

* [Keycloak](https://github.com/keycloak/keycloak) - Keycloak Server and Java adapters
* [Keycloak Documentation](https://github.com/keycloak/keycloak-documentation) - Documentation for Keycloak
* [Keycloak QuickStarts](https://github.com/keycloak/keycloak-quickstarts) - QuickStarts for getting started with Keycloak
* [Keycloak Node.js Connect](https://github.com/keycloak/keycloak-nodejs-connect) - Node.js adapter for Keycloak
* [Keycloak Node.js Admin Client](https://github.com/keycloak/keycloak-nodejs-admin-client) - Node.js library for Keycloak Admin REST API


## License

* [Apache License, Version 2.0](https://www.apache.org/licenses/LICENSE-2.0)
