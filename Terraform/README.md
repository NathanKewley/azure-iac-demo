# Terraform

Sample deployment to create a resource group and deploy into Azure. Few things to note about Terraform deployments:

* You should use a `Storage Account --> Container` for state (Terraform cant create / manage this). You need to manually create it.
* Terraform has really powerful state capability allowing for `plan` and `apply`.
* State capability includes `State Lock` so there cannot be conflicting deploys.
* Can run `terraform fmt` to format the code to keep consistant.
* Hot Take: Terraform is not cross cloud like they claim... Saying Terrafrom is multi-cloud is no different to saying JSON is multi-cloud.
* Terraform is much more involved to get setup and running.
* Does not always support all resources on day 0.

## To Deploy

* `terraform plan`
* `terraform apply`
