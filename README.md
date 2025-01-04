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

2. Run the following commands to start the lab and exec into the control node.
    ```bash
    docker compose up -d
    docker compose exec -it control-node bash
    ```

## Usage

- Playbooks may be placed into the control-node/ansible/ directory of this repository.
- When the containers come up with docker compose, the files should be placed into the container.

## Acknowledgements

- Inspired by [ansible-lab-docker](https://github.com/LMtx/ansible-lab-docker)
