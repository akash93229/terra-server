region                 = "ap-south-1"
name                   = "docdb-cluster"
master_username        = "docdbadmin"
master_password        = "MySecurePassword123!" # Ensure strong password
cluster_instance_class = "db.r5.large"
cluster_instance_count = 1

# Your real subnets in the VPC
group_subnets = ["subnet-03c8ea41f8fca3ffd", "subnet-0b0662fad1c209ce3", "subnet-0da8bfa047b06cd7b"]

# Your real security group
cluster_security_group = ["sg-0b5ff7061edaf816e"] 



apply_immediately       = true
backup_retention_period = 7
skip_final_snapshot     = true
storage_encrypted       = true
ca_cert_identifier      = "rds-ca-2019"
engine                  = "docdb"
family                  = "docdb4.0"
parameters              = {}
preferred_backup_window = "07:00-09:00"
