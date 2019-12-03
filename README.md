# Microservice - Jenkins-Build-Container

This repository contains a library of different kinds of custom built 'build containers' with specific library/dependencies/runtimes to be used in Jenkins.

## Sypnosis

Rather than using physical or vm 'Agents' in Jenkins directly (as previously commonly done), we can instead spawn off ephemeral 'build containers' to do a _one-off_ build job. 
Minimal library/dependencies/runtime can be baked into the build container docker image. No need to configure and install manually those library/dependencies/runtime on the 'Agents' and not require to manage the lifecycle of those 
agents servers/machines etc.
They would be teared down and discarded once the build job finishes.

## Examples

- Java
- Maven
- Gradle
- Node/npm
- Terraform
- Packer
