# Raspi drum module ui

UI for Raspberry drum module.


# Use gRPC proto files

Proto files used from raspidrum_srv/api/grpc

Init submodule:

```bash
git submodule add -b master -- https://github.com/raspidrum/raspidrum_srv.git api/grpc
$ cd server && git sparse-checkout init --cone && git sparse-checkout set api
```

Update submodule:

```bash
$ git submodule update --remote --merge
```
