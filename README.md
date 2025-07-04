# Part 2: Configuration Management – Ansible for Docker Setup

## Objective
Automate the configuration of an EC2 instance using Ansible to:
- Install Docker
- Configure Docker to start on boot
- Allow non-root access to Docker (add user to `docker` group)

## Files
- `hosts.ini` – Ansible inventory with server IP and key path
- `install_docker.yml` – Ansible playbook for Docker setup

## How It Works
This Ansible playbook performs the following:
1. Updates the APT package index.
2. Installs required packages like `curl`, `ca-certificates`.
3. Adds the Docker GPG key and repository.
4. Installs Docker CE.
5. Enables Docker to start on boot.
6. Adds `ubuntu` to the `docker` group for permissionless use.

## How to Run
1. Update `hosts.ini` with your EC2 public IP and PEM key path.
2. Run the playbook:
   ```bash
   ansible-playbook -i hosts.ini install_docker.yml
   ```
3. SSH into the EC2 instance and verify:
   ```bash
   docker --version
   sudo systemctl status docker
   ```

## Result
Docker is installed and running on your EC2 instance, ready for container deployment.
