SUBDIRS=kafka-base zookeeper kafka kafka-connect kafka-connect-s2i user-operator stunnel-base zookeeper-stunnel kafka-stunnel entity-operator-stunnel
DOCKER_TARGETS=docker_build docker_push docker_tag

all: $(SUBDIRS)
clean: $(SUBDIRS)
$(DOCKER_TARGETS): $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)

.PHONY: build clean release all $(SUBDIRS) $(DOCKER_TARGETS)
