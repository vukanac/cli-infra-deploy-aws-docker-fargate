# Provision and Deploy from CLI to AWS

A simple provisioning infrastructure and deploying containerized application
on AWS Fargate (insead on EC2) directly from Command Line Interface (CLI)
in order to be step closer in automation of full delivery pipeline.

## Requirements

* AWS CLI
* ECS CLI - Amazon Elastic Container CLI

Instances:

* RDS
* Docker image with Apache and PHP application
* ECS Cluster

Configuration:

* policy.json - for IAM Role
* ecs-params.yml - a ECS configuration
* docker-compose.yml - define services (LAMP with logging with AWS specifics)

