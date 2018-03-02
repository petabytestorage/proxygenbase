IMAGENAME=proxygenbase

all: .$(IMAGENAME).image

.$(IMAGENAME).image:
	docker build -t petabytestorage/$(IMAGENAME) . && touch $@

clean:
	docker rmi -f $(IMAGENAME) ; rm -f .$(IMAGENAME).image
