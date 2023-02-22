DOCKER_REVISION ?= keycloak-testing-$(USER)
DOCKER_TAG = docker-push.ocf.berkeley.edu/keycloak:$(DOCKER_REVISION)

# OCF-UPDATE-CHECK relmon=20430
KEYCLOAK_VERSION := 20.0.5

.PHONY: cook-image
cook-image:
	docker build --build-arg keycloak_version=$(KEYCLOAK_VERSION) --pull -t $(DOCKER_TAG) .

.PHONY: push-image
push-image:
	docker push $(DOCKER_TAG)
