# terraform-pc-asg

Terraform wrapper module for [terraform-aws-modules/autoscaling/aws](https://registry.terraform.io/modules/terraform-aws-modules/autoscaling/aws/latest) (v9.2.0).

## Usage

```hcl
module "autoscaling" {
  source  = "<path-to-this-module>"

  name       = "my-asg"
  min_size   = 1
  max_size   = 3
  image_id   = "ami-0abcdef1234567890"
  instance_type = "t3.micro"

  vpc_zone_identifier = ["subnet-xxxxxxxx", "subnet-yyyyyyyy"]
}
```

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 1.5.7 |
| aws | >= 6.29 |

## Providers

No providers directly. This module delegates to `terraform-aws-modules/autoscaling/aws`.

## Modules

| Name | Source | Version |
|------|--------|---------|
| autoscaling | terraform-aws-modules/autoscaling/aws | 9.2.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|----------|
| name | Name used across the resources created | `string` | n/a | yes |
| autoscaling_group_tags | A map of additional tags to add to the autoscaling group | `map(string)` | `{}` | no |
| autoscaling_group_tags_not_propagate_at_launch | A list of tag keys that should NOT be propagated to launched EC2 instances | `list(string)` | `[]` | no |
| availability_zone_distribution | A map of configuration for capacity distribution across availability zones | `object` | `null` | no |
| availability_zones | A list of Availability Zones where instances in the Auto Scaling group can be created | `list(string)` | `null` | no |
| block_device_mappings | Specify volumes to attach to the instance besides the volumes specified by the AMI | `list(object)` | `null` | no |
| capacity_rebalance | Indicates whether capacity rebalance is enabled | `bool` | `null` | no |
| capacity_reservation_specification | Targeting for EC2 capacity reservations | `object` | `null` | no |
| context | Reserved | `string` | `null` | no |
| cpu_options | The CPU options for the instance | `object` | `null` | no |
| create | Determines whether to create autoscaling group or not | `bool` | `true` | no |
| create_iam_instance_profile | Determines whether an IAM instance profile is created or to use an existing IAM instance profile | `bool` | `false` | no |
| create_launch_template | Determines whether to create launch template or not | `bool` | `true` | no |
| credit_specification | Customize the credit specification of the instance | `object` | `null` | no |
| default_cooldown | The amount of time, in seconds, after a scaling activity completes before another scaling activity can start | `number` | `null` | no |
| default_instance_warmup | Amount of time, in seconds, until a newly launched instance can contribute to CloudWatch metrics | `number` | `null` | no |
| default_version | Default Version of the launch template | `string` | `null` | no |
| desired_capacity | The number of Amazon EC2 instances that should be running in the autoscaling group | `number` | `null` | no |
| desired_capacity_type | The unit of measurement for the value specified for desired_capacity | `string` | `null` | no |
| disable_api_stop | If true, enables EC2 instance stop protection | `bool` | `null` | no |
| disable_api_termination | If true, enables EC2 instance termination protection | `bool` | `null` | no |
| ebs_optimized | If true, the launched EC2 instance will be EBS-optimized | `bool` | `null` | no |
| enable_monitoring | Enables/disables detailed monitoring | `bool` | `true` | no |
| enabled_metrics | A list of metrics to collect | `list(string)` | `[]` | no |
| enclave_options | Enable Nitro Enclaves on launched instances | `object` | `null` | no |
| force_delete | Allows deleting the Auto Scaling Group without waiting for all instances to terminate | `bool` | `null` | no |
| force_delete_warm_pool | Allows deleting the Auto Scaling Group without waiting for all instances in the warm pool to terminate | `bool` | `null` | no |
| health_check_grace_period | Time (in seconds) after instance comes into service before checking health | `number` | `null` | no |
| health_check_type | `EC2` or `ELB`. Controls how health checking is done | `string` | `null` | no |
| hibernation_options | The hibernation options for the instance | `object` | `null` | no |
| iam_instance_profile_arn | ARN of an existing IAM instance profile | `string` | `null` | no |
| iam_instance_profile_name | The name of the IAM instance profile | `string` | `null` | no |
| iam_role_description | Description of the role | `string` | `null` | no |
| iam_role_name | Name to use on IAM role created | `string` | `null` | no |
| iam_role_path | IAM role path | `string` | `null` | no |
| iam_role_permissions_boundary | ARN of the policy used to set the permissions boundary for the IAM role | `string` | `null` | no |
| iam_role_policies | IAM policies to attach to the IAM role | `map(string)` | `{}` | no |
| iam_role_tags | A map of additional tags to add to the IAM role created | `map(string)` | `{}` | no |
| iam_role_use_name_prefix | Determines whether the IAM role name is used as a prefix | `bool` | `true` | no |
| ignore_desired_capacity_changes | Determines whether the `desired_capacity` value is ignored after initial apply | `bool` | `false` | no |
| ignore_failed_scaling_activities | Whether to ignore failed Auto Scaling scaling activities while waiting for capacity | `bool` | `false` | no |
| image_id | The AMI from which to launch the instance | `string` | `null` | no |
| initial_lifecycle_hooks | One or more Lifecycle Hooks to attach to the Auto Scaling Group before instances are launched | `list(object)` | `null` | no |
| instance_initiated_shutdown_behavior | Shutdown behavior for the instance. Can be `stop` or `terminate` | `string` | `null` | no |
| instance_maintenance_policy | Add a instance maintenance policy to the specified Auto Scaling group | `object` | `null` | no |
| instance_market_options | The market (purchasing) option for the instance | `object` | `null` | no |
| instance_name | Name that is propagated to launched EC2 instances via a tag | `string` | `""` | no |
| instance_refresh | If this block is configured, start an Instance Refresh when this Auto Scaling Group is updated | `object` | `null` | no |
| instance_requirements | The attribute requirements for the type of instance | `object` | `null` | no |
| instance_type | The type of the instance | `string` | `null` | no |
| kernel_id | The kernel ID | `string` | `null` | no |
| key_name | The key name that should be used for the instance | `string` | `null` | no |
| launch_template_description | Description of the launch template | `string` | `null` | no |
| launch_template_id | ID of an existing launch template to be used | `string` | `null` | no |
| launch_template_name | Name of launch template to be created | `string` | `""` | no |
| launch_template_tags | A map of additional tags to add to the launch template | `map(string)` | `{}` | no |
| launch_template_use_name_prefix | Determines whether to use `launch_template_name` as is or create a unique name | `bool` | `true` | no |
| launch_template_version | Launch template version. Can be version number, `$Latest`, or `$Default` | `string` | `null` | no |
| license_specifications | A list of license specifications to associate with | `list(object)` | `null` | no |
| maintenance_options | The maintenance options for the instance | `object` | `null` | no |
| max_instance_lifetime | The maximum amount of time, in seconds, that an instance can be in service | `number` | `null` | no |
| max_size | The maximum size of the autoscaling group | `number` | `null` | no |
| metadata_options | Customize the metadata options for the instance | `object` | `{http_endpoint="enabled", http_put_response_hop_limit=1, http_tokens="required"}` | no |
| metrics_granularity | The granularity to associate with the metrics to collect | `string` | `null` | no |
| min_elb_capacity | Minimum number of healthy instances in the ELB on creation | `number` | `null` | no |
| min_size | The minimum size of the autoscaling group | `number` | `null` | no |
| mixed_instances_policy | Configuration block containing settings to define launch targets for Auto Scaling groups | `object` | `null` | no |
| network_interfaces | Customize network interfaces to be attached at instance boot time | `list(object)` | `null` | no |
| network_performance_options | The network performance options for the launch template | `object` | `null` | no |
| placement | The placement of the instance | `object` | `null` | no |
| placement_group | The name of the placement group into which you'll launch your instances | `string` | `null` | no |
| private_dns_name_options | The options for the instance hostname | `object` | `null` | no |
| protect_from_scale_in | Allows setting instance protection | `bool` | `false` | no |
| ram_disk_id | The ID of the ram disk | `string` | `null` | no |
| region | Region where the resource(s) will be managed | `string` | `null` | no |
| scaling_policies | Map of target scaling policy schedule to create | `map(object)` | `null` | no |
| schedules | Map of autoscaling group schedule to create | `map(object)` | `null` | no |
| secondary_interfaces | Secondary interfaces to associate with instances launched from the template | `list(object)` | `null` | no |
| security_groups | A list of security group IDs to associate | `list(string)` | `[]` | no |
| service_linked_role_arn | The ARN of the service-linked role that the ASG will use to call other AWS services | `string` | `null` | no |
| suspended_processes | A list of processes to suspend for the Auto Scaling Group | `list(string)` | `[]` | no |
| tag_specifications | The tags to apply to the resources during launch | `list(object)` | `null` | no |
| tags | A map of tags to assign to resources | `map(string)` | `{}` | no |
| termination_policies | A list of policies to decide how the instances in the Auto Scaling Group should be terminated | `list(string)` | `[]` | no |
| timeouts | Timeout configurations for the autoscaling group | `object` | `null` | no |
| traffic_source_attachments | Map of traffic source attachment definitions to create | `map(object)` | `null` | no |
| update_default_version | Whether to update Default Version each update. Conflicts with `default_version` | `bool` | `null` | no |
| use_mixed_instances_policy | Determines whether to use a mixed instances policy in the autoscaling group or not | `bool` | `false` | no |
| use_name_prefix | Determines whether to use `name` as is or create a unique name beginning with the `name` as the prefix | `bool` | `true` | no |
| user_data | The Base64-encoded user data to provide when launching the instance | `string` | `null` | no |
| vpc_zone_identifier | A list of subnet IDs to launch resources in. Conflicts with `availability_zones` | `list(string)` | `null` | no |
| wait_for_capacity_timeout | Maximum duration Terraform should wait for ASG instances to be healthy | `string` | `null` | no |
| wait_for_elb_capacity | Cause Terraform to wait for exactly this number of healthy instances in all attached load balancers | `number` | `null` | no |
| warm_pool | If this block is configured, add a Warm Pool to the specified Auto Scaling group | `object` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| autoscaling_group_arn | The ARN for this AutoScaling Group |
| autoscaling_group_availability_zones | The availability zones of the autoscale group |
| autoscaling_group_default_cooldown | Time between a scaling activity and the succeeding scaling activity |
| autoscaling_group_desired_capacity | The number of Amazon EC2 instances that should be running in the group |
| autoscaling_group_enabled_metrics | List of metrics enabled for collection |
| autoscaling_group_health_check_grace_period | Time after instance comes into service before checking health |
| autoscaling_group_health_check_type | EC2 or ELB. Controls how health checking is done |
| autoscaling_group_id | The autoscaling group id |
| autoscaling_group_load_balancers | The load balancer names associated with the autoscaling group |
| autoscaling_group_max_size | The maximum size of the autoscale group |
| autoscaling_group_min_size | The minimum size of the autoscale group |
| autoscaling_group_name | The autoscaling group name |
| autoscaling_group_target_group_arns | List of Target Group ARNs that apply to this AutoScaling Group |
| autoscaling_group_vpc_zone_identifier | The VPC zone identifier |
| autoscaling_policy_arns | ARNs of autoscaling policies |
| autoscaling_schedule_arns | ARNs of autoscaling group schedules |
| iam_instance_profile_arn | ARN assigned by AWS to the instance profile |
| iam_instance_profile_id | Instance profile's ID |
| iam_instance_profile_unique | Stable and unique string identifying the IAM instance profile |
| iam_role_arn | The Amazon Resource Name (ARN) specifying the IAM role |
| iam_role_name | The name of the IAM role |
| iam_role_unique_id | Stable and unique string identifying the IAM role |
| launch_template_arn | The ARN of the launch template |
| launch_template_default_version | The default version of the launch template |
| launch_template_id | The ID of the launch template |
| launch_template_latest_version | The latest version of the launch template |
| launch_template_name | The name of the launch template |
