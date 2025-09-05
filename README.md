# Raspi drum module ui

UI for Raspberry drum module.

## Configuration

The app uses two configurations for connecting to the gRPC server:

- Development configuration: Uses `localhost:50051` as the server address
- Production configuration: Uses `raspidrum-<xxxx>.local:50051` as the server address

The configuration is automatically selected based on the Flutter build mode:
- Debug/Development builds use the development configuration
- Release builds use the production configuration

## Use gRPC proto files

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
