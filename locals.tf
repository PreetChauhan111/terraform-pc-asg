locals {
  common_tags = {
    Environment = var.environment
    Owner       = "pc"
    GitHubRepo  = "terraform-pc-asg"
  }
  common_name               = "${local.common_tags["Owner"]}-${var.environment}-${var.region}-asg"
  iam_instance_profile_name = var.iam_instance_profile_name == "" ? "${local.common_name}-instance-profile" : var.iam_instance_profile_name
  iam_role_name             = var.iam_role_name == "" ? "${local.common_name}-role" : var.iam_role_name
  instance_name             = var.instance_name == "" ? "${local.common_name}-instance" : var.instance_name
  key_name                  = var.key_name == "" ? "${local.common_name}-key" : var.key_name
  launch_template_name      = var.launch_template_name == "" ? "${local.common_name}-launch-template" : var.launch_template_name
  name                      = var.name == "" ? "${local.common_name}-asg" : var.name
  autoscaling_group_tags    = merge(local.common_tags, var.autoscaling_group_tags, { Name = local.name })
  iam_role_tags             = merge(local.common_tags, var.iam_role_tags, { Name = local.iam_role_name })
  launch_template_tags      = merge(local.common_tags, var.launch_template_tags, { Name = local.launch_template_name })
  tags                      = merge(local.common_tags, var.tags, { Name = local.name }, { InstanceName = local.instance_name, LaunchTemplateName = local.launch_template_name, IAMRoleName = local.iam_role_name, IAMInstanceProfileName = local.iam_instance_profile_name })
}