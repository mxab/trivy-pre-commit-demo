# Trivy as pre-commit hook show case

## Setup


```sh
pre-commit install
```

## Demo

Append some demo aws credentials to the Dockerfile

```sh
./make_unsecure_changes.sh
```

```sh
git commit -am "added some envs"
```
