DOCKER_REVISION ?= keycloak-testing-$(USER)
DOCKER_TAG = docker-push.ocf.berkeley.edu/keycloak:$(DOCKER_REVISION)

KEYCLOAK_VERSION := 6.0.1

.PHONY: cook-image
cook-image:
	docker build --build-arg keycloak_version=$(KEYCLOAK_VERSION) --pull -t $(DOCKER_TAG) .

.PHONY: push-image
push-image:
	docker push $(DOCKER_TAG)
