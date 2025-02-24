# Dockerfile Bug: Unstable Base Image and Build Performance

This repository demonstrates a common, yet often overlooked issue in Dockerfiles: using an unstable base image (`alpine:latest`) and employing a build optimization that may backfire.  Using `alpine:latest` can lead to intermittent build failures as the underlying Alpine Linux version changes between builds. The `--no-cache-dir` flag, while potentially beneficial, can increase build times if caching is crucial for your project.

## Bug:
The provided `Dockerfile` uses `alpine:latest` and `--no-cache-dir` leading to inconsistent builds and potential performance issues.

## Solution:
The `Dockerfile_fixed` demonstrates the solution.  It utilizes a specific version of the Alpine image (3.17) to ensure build consistency and removes the `--no-cache-dir` flag to benefit from caching.