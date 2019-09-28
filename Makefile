TARGETS	= centos7-openjdk8  ubi8-minimal-openjdk8  ubi8-openjdk8 \
          centos7-openjdk11 ubi8-minimal-openjdk11 ubi8-openjdk11
REPO	= my

.PHONY: default
default: build

.PHONY: build
build: $(TARGETS:=.build)

.PHONY: $(TARGETS:=.build)
$(TARGETS:=.build): %.build: %
	-docker build -t $(REPO)/$* $<

.PHONY: $(TARGETS:=.run)
$(TARGETS:=.run): %.run: %.build
	-docker run --rm -it $(REPO)/$* bash

.PHONY: clean
clean: $(TARGETS:=.clean)
$(TARGETS:=.clean): %.clean:
	-docker rmi -f $(REPO)/$*

.PHONY: clobber
clobber: clean
	-docker image prune -f
