ARG keycloak_version=latest
FROM jboss/keycloak:${keycloak_version}

COPY krb5.conf /etc
