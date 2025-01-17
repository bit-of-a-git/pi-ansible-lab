# Ansible Lab for Raspberry Pi

This repository is inspired by [ansible-lab-docker](https://github.com/LMtx/ansible-lab-docker) and aims to create a mini Ansible lab environment specifically for Raspberry Pi. This lab can be used to experiment with Ansible playbooks and configurations on Raspberry Pi devices.

## Features

- Setup Ansible lab environment on Raspberry Pi
- Experiment with Ansible playbooks and configurations
- Lightweight and easy to use

## Requirements

- Raspberry Pi with Raspbian OS installed
- Docker and Docker Compose installed on your Raspberry Pi

## Getting Started

1. Clone this repository to your Raspberry Pi:
    ```bash
    git clone https://github.com/bit-of-a-git/pi-ansible-lab.git
    cd pi-ansible-lab
    ```

2. (Optional) The lab uses one host container by default. If you would like to add more replicas of the host container, you can modify the `scale` line in docker-compose.yaml:
    ```yaml
    services:
      host:
        ...
        scale: 3  # Change this number to the desired number of replicas
    ```

    Then, run the following command to update the inventory:
    ```bash
    docker container ls --format "{{.Names}}" | grep host | sort > ./control-node/ansible/inventory
    ```

3. Run the following commands to start the lab and exec into the control node.

    ```bash
    docker compose up -d
    docker compose exec -it control-node bash
    ```

## Usage

- Playbooks may be placed into the control-node/ansible/ directory of this repository.
- When the containers come up with docker compose, the files should be placed into the container.
- For space, the host containers use an Alpine image. **Please note**: Alpine uses the APK package manager, so playbooks should take this into account.

## Acknowledgements

- Inspired by [ansible-lab-docker](https://github.com/LMtx/ansible-lab-docker)
