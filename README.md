# Kafka-burrow

This repository forks kafka-burrow from upstream and pushes it to our Github Packages.

## Build and push

Update the version tag in `build-and-push.sh`, then run it as:

```
$ export GITHUB_USER=filidorwiese; export GITHUB_TOKEN=b46...; ./build-and-push.sh
```

You can setup a Personal Access Token at: https://github.com/settings/tokens
Make sure to include `read:packages` and `write:packages` permissions
