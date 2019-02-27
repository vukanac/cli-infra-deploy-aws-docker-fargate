# Provision and Deploy from CLI to AWS

A simple provisioning infrastructure and deploying containerized application
on AWS Fargate (insead on EC2) directly from Command Line Interface (CLI)
in order to be step closer in automation of full delivery pipeline.

## Requirements

* AWS CLI (`pip3 install aws-cli pip3 install awscli aws-shell --upgrade --user`)
* ECS CLI - Amazon Elastic Container CLI (`brew install amazon-ecs-cli`)

Optional:

* make - (`brew install make`)

Instances:

* RDS
* Docker image with Apache and PHP application
* ECS Cluster

Configuration:

* policy.json - for IAM Role
* ecs-params.yml - a ECS configuration
* docker-compose.yml - define services (LAMP with logging with AWS specifics)

## Steps

    aws --version
    aws-shell --version
    ecs-cli --version
    aws configure

    # Create DB
    make db-create

    make db-info

    # Delete DB
    make db-delete
