# Creating EC2 Instances using Terraform

![terrafom](https://upload.wikimedia.org/wikipedia/commons/0/04/Terraform_Logo.svg)

Terraform allow you to manage infrastructure with configuration files rather than through a graphical user interface.
Objective

   + Write a tf file to be used with Terrafor
   + Create a bash script to install the required softwares
   + Run terraform to create our instance

## Prerequisites

   + AWS Access Key and Secret Key
   + Install Terraform
   + Public/Private Key Pair

## Usage

   + Install Git
   + Clone the repo
```
git clone https://github.com/BetcyBabu/Create-EC2-Terraform-sample.git
cd Create-EC2-Terraform-sample
terraform init
terraform apply 
```
## Result 

``` hcl
jisjo@jisjo-X541UAK ~/Documents/fuji/terraform/day-3-variables-ec2-key-pair-security-grp $ terraform apply
aws_key_pair.terrafom_key: Refreshing state... [id=terrafom-key]
aws_security_group.terraform_web_allow_http: Refreshing state... [id=sg-06601c4dde8476253]
aws_security_group.terraform_web_allow_remote: Refreshing state... [id=sg-03946b925cbf65fc9]

Note: Objects have changed outside of Terraform

Terraform detected the following changes made outside of Terraform since the last "terraform apply":

  # aws_key_pair.terrafom_key has been changed
  ~ resource "aws_key_pair" "terrafom_key" {
        id          = "terrafom-key"
      + tags        = {}
        # (6 unchanged attributes hidden)
    }

Unless you have made equivalent changes to your configuration, or ignored the relevant attributes using ignore_changes, the
following plan may include actions to undo or respond to these changes.

─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  + create

Terraform will perform the following actions:

  # aws_instance.web will be created
  + resource "aws_instance" "web" {
      + ami                                  = "ami-0108d6a82a783b352"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)
      + cpu_core_count                       = (known after apply)
      + cpu_threads_per_core                 = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t2.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = "terrafom-key"
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + secondary_private_ips                = (known after apply)
      + security_groups                      = (known after apply)
      + source_dest_check                    = true
      + subnet_id                            = (known after apply)
      + tags                                 = {
          + "Name" = "terrafom_webserver"
        }
      + tags_all                             = {
          + "Name" = "terrafom_webserver"
        }
      + tenancy                              = (known after apply)
      + user_data                            = "ff0c11b2ee004aef3ec6f99a50f5cbfb954329ee"
      + user_data_base64                     = (known after apply)
      + vpc_security_group_ids               = [
          + "sg-03946b925cbf65fc9",
          + "sg-06601c4dde8476253",
        ]

      + capacity_reservation_specification {
          + capacity_reservation_preference = (known after apply)

          + capacity_reservation_target {
              + capacity_reservation_id = (known after apply)
            }
        }

      + ebs_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + snapshot_id           = (known after apply)
          + tags                  = (known after apply)
          + throughput            = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }

      + enclave_options {
          + enabled = (known after apply)
        }

      + ephemeral_block_device {
          + device_name  = (known after apply)
          + no_device    = (known after apply)
          + virtual_name = (known after apply)
        }

      + metadata_options {
          + http_endpoint               = (known after apply)
          + http_put_response_hop_limit = (known after apply)
          + http_tokens                 = (known after apply)
        }

      + network_interface {
          + delete_on_termination = (known after apply)
          + device_index          = (known after apply)
          + network_interface_id  = (known after apply)
        }

      + root_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + tags                  = (known after apply)
          + throughput            = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_instance.web: Creating...
aws_instance.web: Still creating... [10s elapsed]
aws_instance.web: Still creating... [20s elapsed]
aws_instance.web: Still creating... [30s elapsed]
aws_instance.web: Creation complete after 36s [id=i-0fbf1b2d932c394b9]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
```
