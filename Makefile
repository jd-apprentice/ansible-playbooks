## ansible

.PHONY: run
run:
	sh scripts/check_and_run.sh || true

.PHONY: playbook
playbook:
	ansible-playbook ansible/playbooks/$(module)/$(playbook).yml -i ansible/inventory/$(inventory).ini

# https://www.digitalocean.com/community/tutorials/how-to-access-system-information-facts-in-ansible-playbooks

.PHONY: facts
facts:
	ansible all -i ansible/inventory/$(inventory).ini -m setup

## aws

include config/aws.mk

.PHONY: describe
describe:
	aws ec2 describe-instances | jq '.Reservations[].Instances[] | {InstanceId, State, PublicIpAddress, PrivateIpAddress, Tags}'

# https://docs.aws.amazon.com/cli/latest/reference/ec2/run-instances.html

.PHONY: create
create:
	aws ec2 run-instances \
	--image-id $(image_id) \
	--instance-type $(instance_type) \
	--key-name $(key_name) \
	--security-group-ids $(security_group_ids) \
	--subnet-id $(subnet_id) \
	--tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=$(name)}]' \
	--associate-public-ip-address

.PHONY: terminate
terminate:
	aws ec2 terminate-instances --instance-id $(instance_id)