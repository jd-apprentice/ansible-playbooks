#### https://gist.github.com/apolloclark/b3f60c1f68aa972d324b

#### list all instances (running, and not running)
#### http://docs.aws.amazon.com/cli/latest/reference/ec2/describe-instances.html
```bash
aws ec2 describe-instances
```

#### list all instances running
```bash
aws ec2 describe-instances --filters Name=instance-state-name,Values=running
```

#### create a new instance
#### http://docs.aws.amazon.com/cli/latest/reference/ec2/run-instances.html
```bash
aws ec2 run-instances \
    --image-id ami-f0e7d19a \	
    --instance-type t2.micro \
    --security-group-ids sg-00000000 \
    --dry-run
```

#### stop an instance
#### http://docs.aws.amazon.com/cli/latest/reference/ec2/terminate-instances.html
```bash
aws ec2 terminate-instances \
    --instance-ids <instance_id>
```

#### list status of all instances
#### http://docs.aws.amazon.com/cli/latest/reference/ec2/describe-instance-status.html
```bash
aws ec2 describe-instance-status
```

#### list status of a specific instance
```bash
aws ec2 describe-instance-status \
    --instance-ids <instance_id>
```

#### list all running instance, Name tag and Public IP Address
```bash
aws ec2 describe-instances \
  --filters Name=instance-state-name,Values=running \
  --query 'Reservations[].Instances[].[PublicIpAddress, Tags[?Key==`Name`].Value | [0] ]' \
  --output text | sort -k2
```