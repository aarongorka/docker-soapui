export

ifdef DOTENV
	DOTENV_TARGET=dotenv
else
	DOTENV_TARGET=.env
endif

VERSION = 5.4.0
IMAGE_NAME ?= aarongorka/soapui:$(VERSION)

##################
# PUBLIC TARGETS #
##################
dockerBuild:
	docker build -t $(IMAGE_NAME) .

shell:
	docker-compose down
	docker-compose run --rm --entrypoint=bash soapui

gitTag:
	-git tag -d $(VERSION)
	-git push origin :refs/tags/$(VERSION)
	git tag $(VERSION)
	git push origin $(VERSION)
