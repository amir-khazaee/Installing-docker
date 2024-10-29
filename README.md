# Installing Docker with Ansible

This Ansible playbook automates the installation of Docker by copying a bash script to the `/tmp` directory on control nodes and executing it.

## File Structure


project/
├── playbook.yml
├── inventory.yml
└── files/
    └── install_docker.sh


## Script Tasks

The `install_docker.sh` script performs the following steps:

1. Sets DNS
2. Configures timezone
3. Sets Arvan Cloud as the package mirror
4. Removes any existing Docker installation
5. Updates system packages
6. Installs required packages
7. Logs in to Docker using provided credentials
8. Runs the `hello-world` container to verify the installation

## Usage

1. **Edit Configuration Files**  
   - Update `playbook.yml` with your remote server details.
   - Enter your Docker username and password in `install_docker.sh`.

2. **Run the Playbook**  
   Execute the following command in your terminal:
   
   ansible-playbook -i inventory.yml playbook.yml --ask-become-pass
   
3. **Provide Password**  
   Enter the remote server's password when prompted to complete the installation.

