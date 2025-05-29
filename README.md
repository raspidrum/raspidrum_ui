# Raspi drum module ui

UI for Raspberry drum module.


# Use gRPC proto files

Proto files used from raspidrum_srv/api/grpc

```bash
$ cd server && git sparse-checkout init --cone && git sparse-checkout set api

$ cd .. && git submodule update --force --checkout server
```
