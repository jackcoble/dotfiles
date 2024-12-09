#!/usr/bin/env fish

# Fetch credentials from 1Password
set AWS_ACCESS_KEY_ID (op item get "AWS Access Key" --fields "access key id")
set AWS_SECRET_ACCESS_KEY (op item get "AWS Access Key" --reveal --fields "secret access key")

# Export credentials as environment variables
set -x AWS_ACCESS_KEY_ID $AWS_ACCESS_KEY_ID
set -x AWS_SECRET_ACCESS_KEY $AWS_SECRET_ACCESS_KEY
