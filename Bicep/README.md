# Bicep

Bicep is the language Microsoft have created as an abscraction over ARM. Bicep compiles down to ARM so maintains the day 0 compatibility. Bicep is much nicer to work with than ARM templates. However it still shares some of the same problems as ARM.

* Deployments are either at the `Subscription` scope or `Resource Group` scope. (This means you cant create a Resource group then deploy into it with a single template).
* Day 0 support for all resrouces
* Deployments can be `Incremental` or `Complete`:
  * Incremental: Will append the resources in the template to those already existing in the `Resource Group`
  * Complete: Sets the desired state of the `Resrouce Group` to be whats in the template. i.e. if its not in the template it will be removed.
