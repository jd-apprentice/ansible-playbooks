.PHONY: run
run:
	sh scripts/check_and_run.sh || true

.PHONY: playbook
playbook:
    ansible-playbook ansible/playbooks/$(module)/$(playbook).yml -i ansible/inventory/$(inventory).ini