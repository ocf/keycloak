ARG keycloak_version=latest
FROM quay.io/keycloak/keycloak:${keycloak_version}

COPY theme /opt/keycloak/themes/ocf-theme

COPY krb5.conf /etc
