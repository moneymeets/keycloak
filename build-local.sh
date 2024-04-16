#!/bin/sh
# c.f. .github/workflows/build-and-deploy.yml
mvn clean install -Pdistribution -DskipTests -DskipExamples -DskipTestsuite
cp quarkus/dist/target/keycloak-22.0.4.tar.gz quarkus/container/
pushd quarkus/container
docker build --build-arg KEYCLOAK_DIST=$(ls keycloak-*.tar.gz) . -t keycloak-local
popd
