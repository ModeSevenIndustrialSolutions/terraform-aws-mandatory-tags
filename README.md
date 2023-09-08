# Tags Module

Provides both tag validation as well as ensuring required tags are populated.

## Usage

```
module "tags" {
  source  = "shared/tags"

  application = "Access to AWS storage environment"
  creator = "terraform"
  created = "2023-08-22"
  account = "arn:aws:iam::012345678910:role/terraform-role"
  environment = "production"
  billing = "OS-Climate"
  origin  = "github.com/os-climate/terraform/terraform/shared/tags"
}
```

## Output

From this module, the output will provide tags in the following format:

```
{
  "application" = "Access to AWS storage environment",
  "creator" = "terraform"
  "created" = "2023-08-22"
  "account" = "arn:aws:iam::012345678910:role/terraform-role",
  "environment" = "production",
  "billing" = "OS-Climate",
  "origin" = "github.com/os-climate/terraform/terraform/shared/tags"
}
```

Code example:

```
[
  {
	key = "application",
	value = "Access to AWS storage environment",
	propogate_at_launch = true
  }, {
	key = "creator,
	value = "terraform",
	propagate_at_launch = true
  },
  	key = "created",
	value = "2023-08-22T15:43",
	propagate_at_launch = true
  }, {
	key = "account",
	value = "arn:aws:iam::012345678910:role/terraform-role",
	propagate_at_launch = true
  }, {
	key = "environment",
	value = "production",
	propagate_at_launch = true
  }, {
	key = "billing",
	value = "OS-Climate",
	propagate_at_launch = true
  }, {
	key = "origin",
	value = "github.com/os-climate/terraform/terraform/shared/tags",
	propagate_at_launch = true
  }
]
```

# Requirements

## Providers

| Name                                             | Version |
| ------------------------------------------------ | ------- |
| <a name="provider_aws"></a> [aws](#provider_aws) | N/A     |

## Modules

No modules.

## Resources

| Name                                                                                                                                  | Type        |
| ------------------------------------------------------------------------------------------------------------------------------------- | ----------- |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity)         | data source |
| [aws_caller_identity.current.user_id](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |

## Inputs

| Name                                                               | Description                                                                                                 | Type     | Default       | Required |
| ------------------------------------------------------------------ | ----------------------------------------------------------------------------------------------------------- | -------- | ------------- | :------: |
| <a name="input_application"></a> [application](#input_application) | Application name and/or identifier                                                                          | `string` | `null`        |   yes    |
| <a name="input_creator"></a> [creator](#input_creator)             | The framework, tool, and/or method that created this resource - terraform, serverless, pulumi, manual, etc. | `string` | `"terraform"` |   yes    |
| <a name="input_created"></a> [creator](#input_created)             | The date this resource was created in %Y-%m-%d format                                                       | `string` | `"terraform"` |   yes    |
| <a name="input_account"></a> [account](#input_account)             | The IAM user or role that deployed the infrastructure                                                       | `string` | n/a           |   yes    |
| <a name="input_environment"></a> [environment](#input_environment) | The environment does this resource belong to? - sandbox, nonprod, prod                                      | `string` | n/a           |   yes    |
| <a name="input_billing"></a> [billing](#input\billing)             | The organisation/project/entity responsible for resource costs                                              | `string` | n/a           |   yes    |
| <a name="input_origin"></a> [origin](#input_origin)                | The repository where the relevant code is stored                                                            | `string` | n/a           |   yes    |

## Outputs

| Name                                            | Description                                                              |
| ----------------------------------------------- | ------------------------------------------------------------------------ |
| <a name="output_tags"></a> [tags](#output_tags) | Tags which are applicable to all resources - map of `{key: value}` pairs |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

# License

[Mozilla Public License Version 2.0](https://github.com/os-climate/terraform/blob/main/LICENSE)
