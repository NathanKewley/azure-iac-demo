# Azure Resource Manager

Sample deployment to create a resource group and deploy into Azure. Few things to note about ARM deployments:

* Deployments are either at the `Subscription` scope or `Resource Group` scope. (This means you cant create a Resource group then deploy into it with a single template).
* Templates are written in JSON which is not particuly nice to work with.
* Day 0 support for all Azure resources
* Deployments can be `Incremental` or `Complete`:
  * Incremental: Will append the resources in the template to those already existing in the `Resource Group`
  * Complete: Sets the desired state of the `Resrouce Group` to be whats in the template. i.e. if its not in the template it will be removed.
