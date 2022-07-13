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

pre-commit will complain about the aws credentials (three times as the hooks are doing the same)

```
trivyfsall...............................................................Failed
- hook id: trivyfsall
- exit code: 1

2022-07-13T13:31:39.647+0200    INFO    Vulnerability scanning is enabled
2022-07-13T13:31:39.647+0200    INFO    Secret scanning is enabled
2022-07-13T13:31:39.647+0200    INFO    If your scanning is slow, please try '--security-checks vuln' to disable secret scanning
2022-07-13T13:31:39.647+0200    INFO    Please see also https://aquasecurity.github.io/trivy/dev/docs/secret/scanning/#recommendation for faster secret detection
2022-07-13T13:31:39.689+0200    INFO    Number of language-specific files: 0

Dockerfile (secrets)

Total: 2 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 2)

CRITICAL: AWS (aws-access-key-id)
════════════════════════════════════════
AWS Access Key ID
────────────────────────────────────────
 Dockerfile:2
────────────────────────────────────────
   1   FROM ubuntu:22.04
   2 [ ENV AWS_ACCESS_KEY_ID=********************
   3   ENV AWS_SECRET_ACCESS_KEY=****************************************
────────────────────────────────────────


CRITICAL: AWS (aws-secret-access-key)
════════════════════════════════════════
AWS Secret Access Key
────────────────────────────────────────
 Dockerfile:3
────────────────────────────────────────
   1   FROM ubuntu:22.04
   2   ENV AWS_ACCESS_KEY_ID=********************
   3 [ ENV AWS_SECRET_ACCESS_KEY=****************************************
   4   
────────────────────────────────────────




trivyfs..................................................................Failed
- hook id: trivyfs
- exit code: 1

2022-07-13T13:31:40.181+0200    INFO    Vulnerability scanning is enabled
2022-07-13T13:31:40.182+0200    INFO    Secret scanning is enabled
2022-07-13T13:31:40.182+0200    INFO    If your scanning is slow, please try '--security-checks vuln' to disable secret scanning
2022-07-13T13:31:40.182+0200    INFO    Please see also https://aquasecurity.github.io/trivy/dev/docs/secret/scanning/#recommendation for faster secret detection
2022-07-13T13:31:40.220+0200    INFO    Number of language-specific files: 0

Dockerfile (secrets)

Total: 2 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 2)

CRITICAL: AWS (aws-access-key-id)
════════════════════════════════════════
AWS Access Key ID
────────────────────────────────────────
 Dockerfile:2
────────────────────────────────────────
   1   FROM ubuntu:22.04
   2 [ ENV AWS_ACCESS_KEY_ID=********************
   3   ENV AWS_SECRET_ACCESS_KEY=****************************************
────────────────────────────────────────


CRITICAL: AWS (aws-secret-access-key)
════════════════════════════════════════
AWS Secret Access Key
────────────────────────────────────────
 Dockerfile:3
────────────────────────────────────────
   1   FROM ubuntu:22.04
   2   ENV AWS_ACCESS_KEY_ID=********************
   3 [ ENV AWS_SECRET_ACCESS_KEY=****************************************
   4   
────────────────────────────────────────




trivy....................................................................Failed
- hook id: trivy
- exit code: 1

2022-07-13T13:31:40.701+0200    INFO    Vulnerability scanning is enabled
2022-07-13T13:31:40.701+0200    INFO    Secret scanning is enabled
2022-07-13T13:31:40.701+0200    INFO    If your scanning is slow, please try '--security-checks vuln' to disable secret scanning
2022-07-13T13:31:40.701+0200    INFO    Please see also https://aquasecurity.github.io/trivy/dev/docs/secret/scanning/#recommendation for faster secret detection
2022-07-13T13:31:40.741+0200    INFO    Number of language-specific files: 0

Dockerfile (secrets)

Total: 2 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 2)

CRITICAL: AWS (aws-access-key-id)
════════════════════════════════════════
AWS Access Key ID
────────────────────────────────────────
 Dockerfile:2
────────────────────────────────────────
   1   FROM ubuntu:22.04
   2 [ ENV AWS_ACCESS_KEY_ID=********************
   3   ENV AWS_SECRET_ACCESS_KEY=****************************************
────────────────────────────────────────


CRITICAL: AWS (aws-secret-access-key)
════════════════════════════════════════
AWS Secret Access Key
────────────────────────────────────────
 Dockerfile:3
────────────────────────────────────────
   1   FROM ubuntu:22.04
   2   ENV AWS_ACCESS_KEY_ID=********************
   3 [ ENV AWS_SECRET_ACCESS_KEY=****************************************
   4   
────────────────────────────────────────


```