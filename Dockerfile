ARG keycloak_version=latest
FROM jboss/keycloak:${keycloak_version}

COPY theme /opt/jboss/keycloak/themes/ocf-theme

COPY krb5.conf /etc
