# web-tooling-benchmark

## run

```bash
docker run --rm shamelesscookie/web-tooling-benchmark
```

## build

```bash
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 -t shamelesscookie/web-tooling-benchmark:latest --pull --push .
```                                               
