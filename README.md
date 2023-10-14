# A list of curated playbooks for the Ansible Galaxy 📚

<p align="center">
  <img width="500" height="500" src="https://github.com/jd-apprentice/ansible-playbooks/assets/68082746/a2b49a94-5cfa-45e6-abc7-66774c39da6d">
</p>

Find playbooks for every usage you need, from basic task like installing a package to set up entire environments

# Table of Contents

1. [Requirements 📋](#requirements-)
2. [File structure 📁](#file-structure-)
3. [Usage 🚀](#usage-)
4. [License 📰](#license-)
5. [Contributing 🤝](#contributing-)

## Requirements 📋

- Ansible 2.15+
- Python 3.10+
- Make

## Usage 🚀

To run playbooks with a prompt, use the following command:

```bash
make run
```

You will be prompted to select a playbook, module and inventory file.

If you want to run a playbook without being prompted, use the following command:

```bash
make playbook playbook="playbook" module="module" inventory="inventory"
```

Here you expecify the playbook, module and inventory file manually.

To run an entire suite of playbooks, use the following command:

```bash
make playbook-suite playbook="playbook" inventory="inventory"
```

## File structure 📁

```
🌳 ansible-playbooks/
┣ 📁 ansible/
┃ ┣ 📁 files/
┃ ┃ ┗ 📄 .gitkeep
┃ ┣ 📁 inventory/
┃ ┃ ┗ 📄 debian.ini
┃ ┣ 📁 playbooks/
┃ ┃ ┗ 📄 update-and-install.yml
┃ ┣ 📁 roles/
┃ ┃ ┣ 📁 certbot/
┃ ┃ ┃ ┗ 📁 tasks/
┃ ┃ ┃   ┗ 📄 install.yml
┃ ┃ ┣ 📁 docker/
┃ ┃ ┃ ┗ 📁 tasks/
┃ ┃ ┃   ┣ 📄 docker-group.yml
┃ ┃ ┃   ┗ 📄 install.yml
┃ ┃ ┣ 📁 nginx/
┃ ┃ ┃ ┗ 📁 tasks/
┃ ┃ ┃   ┗ 📄 install.yml
┃ ┃ ┗ 📁 system/
┃ ┃   ┗ 📁 tasks/
┃ ┃ ┃   ┣ 📄 debian-update.yml
┃ ┃ ┃   ┗ 📄 ufw-web.yml
┃ ┗ 📄 docker.yml
┣ 📁 config/
┃ ┗ 📄 aws.mk
┣ 📁 docs/
┃ ┗ 📄 EC2.md
┣ 📁 scripts/
┃ ┗ 📄 check_and_run.sh
┣ 📄 CONTRIBUTING.md
┣ 📄 LICENSE
┣ 📄 Makefile
┗ 📄 README.md
```

## Contributing 🤝

You can check the [CONTRIBUTING](CONTRIBUTING.md) file for more information.

## License 📜

This project is licensed under the GNU GENERAL PUBLIC LICENSE - see the [LICENSE](LICENSE) file for details.
