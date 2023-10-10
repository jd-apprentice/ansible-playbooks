# A list of curated playbooks for the Ansible Galaxy 📚

## Requirements 📋

- Ansible 2.15+
- Python 3.10+
- Make

## File structure 📁

```
🌳 ansible-playbooks/
┣ 📁 ansible/
┃ ┣ 📁 files/ # Files to be copied to the remote host
┃ ┣ 📁 inventory/
┃ ┃ ┗ 📄 debian.ini # Inventory file for Debian-based distros
┃ ┗ 📁 playbooks/
┃   ┣ 📁 debian/ # Playbooks for Debian-based distros
┃ ┃ ┃ ┣ 📄 certbot.yml
┃ ┃ ┃ ┣ 📄 docker.yml
┃ ┃ ┃ ┣ 📄 nginx.yml
┃ ┃ ┃ ┗ 📄 prepare.yml
┃   ┗ 📁 shared/ # Playbooks for all distros
┃ ┃   ┣ 📄 docker-group.yml
┃ ┃   ┗ 📄 ufw.yml
┣ 📁 scripts/
┃ ┗ 📄 check_and_run.sh
┗ 📄 Makefile
```
