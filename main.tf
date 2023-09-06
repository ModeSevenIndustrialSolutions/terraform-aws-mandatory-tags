data "aws_caller_identity" "current" {}

# data "external" "actor" {}
#  program = ["${path.module}/env.sh"]
#}

# Show the results of running the data source.
# This is a map of environment variable names to their values

# output "actor" {
#  value = data.external.actor
# }

#output "actor" {
#  value = data.external.actor.result["actor"]
#}

locals {
  tags = {
    application = var.application
    creator     = data.aws_caller_identity.current.arn
    created     = formatdate("YYYY-MM-DD", timestamp())
    actor       = var.actor
    environment = var.environment
    billing     = var.billing
    origin      = var.origin
  }
}
