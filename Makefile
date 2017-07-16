.PHONY: build push consul

consul: build push

build:
	docker rm -fv registry.oz/consul-confd || true
	docker build -t registry.oz/consul-confd .

push:
	docker push registry.oz/consul-confd
