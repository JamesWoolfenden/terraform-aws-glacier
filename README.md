# terraform-aws-glacier

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-glacier/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-glacier)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-glacier.svg)](https://github.com/JamesWoolfenden/terraform-aws-glacier/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-aws-glacier.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-aws-glacier/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-aws-glacier/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-glacier&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-aws-glacier/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-glacier&benchmark=INFRASTRUCTURE+SECURITY)

Creates a Glacier Vault, with policy and lock.

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

Include this repository as a module in your existing terraform code:

```hcl
module "glacier" {
  source       = "JamesWoolfenden/glacier/aws"
  version      = "0.0.1"
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Requirements

No requirements.

## Providers

| Name                                             | Version |
| ------------------------------------------------ | ------- |
| <a name="provider_aws"></a> [aws](#provider_aws) | n/a     |

## Modules

No modules.

## Resources

| Name                                                                                                                                  | Type        |
| ------------------------------------------------------------------------------------------------------------------------------------- | ----------- |
| [aws_glacier_vault.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/glacier_vault)                | resource    |
| [aws_glacier_vault_lock.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/glacier_vault_lock)      | resource    |
| [aws_sns_topic.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic)                        | resource    |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity)         | data source |
| [aws_iam_policy_document.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region)                           | data source |

## Inputs

| Name                                                                                             | Description                                                                                                                                                                                                                                                                                                             | Type     | Default                | Required |
| ------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- | ---------------------- | :------: |
| <a name="input_complete_lock"></a> [complete_lock](#input_complete_lock)                         | Set to true for an immutable permanent lock                                                                                                                                                                                                                                                                             | `bool`   | `false`                |    no    |
| <a name="input_ignore_deletion_error"></a> [ignore_deletion_error](#input_ignore_deletion_error) | Allow Terraform to ignore the error returned when attempting to delete the Glacier Lock Policy. This can be used to delete or recreate the Glacier Vault via Terraform, for example, if the Glacier Vault Lock policy permits that action. This should only be used in conjunction with complete_lock being set to true | `bool`   | `false`                |    no    |
| <a name="input_sns_topic_name"></a> [sns_topic_name](#input_sns_topic_name)                      | n/a                                                                                                                                                                                                                                                                                                                     | `string` | `"glacier-sns-topic-"` |    no    |
| <a name="input_vault_name"></a> [vault_name](#input_vault_name)                                  | n/a                                                                                                                                                                                                                                                                                                                     | `string` | n/a                    |   yes    |

## Outputs

| Name                                               | Description |
| -------------------------------------------------- | ----------- |
| <a name="output_lock"></a> [lock](#output_lock)    | n/a         |
| <a name="output_topic"></a> [topic](#output_topic) | n/a         |
| <a name="output_vault"></a> [vault](#output_vault) | n/a         |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Instructions

## Related Projects

Check out these related projects.

- [terraform-aws-codebuild](https://github.com/jameswoolfenden/terraform-aws-codebuild) - Making a Build pipeline

## Help

**Got a question?**

File a GitHub [issue](https://github.com/jameswoolfenden/terraform-aws-glacier/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/jameswoolfenden/terraform-aws-glacier/issues) to report any bugs or file feature requests.

## Copyrights

Copyright � 2019-2022 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-glacier&url=https://github.com/jameswoolfenden/terraform-aws-glacier
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-glacier&url=https://github.com/jameswoolfenden/terraform-aws-glacier
[share_reddit]: https://reddit.com/submit/?url=https://github.com/jameswoolfenden/terraform-aws-glacier
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/jameswoolfenden/terraform-aws-glacier
[share_email]: mailto:?subject=terraform-aws-glacier&body=https://github.com/jameswoolfenden/terraform-aws-glacier
