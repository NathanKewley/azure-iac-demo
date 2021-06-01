# lolite

[lolite](https://github.com/NathanKewley/lolite) is a tool to orchestrate azure deploys using Bicep.

For a full sample showing deployment using GitHub actions see the [lolite-sample-project](https://github.com/NathanKewley/lolite-sample-project)

lolite aims to solve some of the key issues faces with Bicep deployments:

* Manages `Resoruce Group` creation
* Seperates config from templates (inspired by the Sceptre tool for AWS)
* Allows dependancy chaining / deployment hirachy (using Recursive Depth Search)
* Supports cross subscriptions deployments
