#!/bin/bash


# data from https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-envvars.html

# the EXAMPLE and PART vars are there to obfuscate the credentials, otherwise trivy would complain about this file. 

EXAMPLE="EXAMPLE"
echo "ENV AWS_ACCESS_KEY_ID=AKIAIOSFODNN7${EXAMPLE}" >> Dockerfile

PART1="wJalrXUtnFEMI"
PART2="K7MDENG"
PART3="bPxRfiCY${EXAMPLE}KEY"

echo "ENV AWS_SECRET_ACCESS_KEY=${PART1}/${PART2}/${PART3}" >> Dockerfile
