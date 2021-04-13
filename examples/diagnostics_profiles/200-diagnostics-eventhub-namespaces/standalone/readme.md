You can test this module outside of a landingzone using

```
configuration_folder=/workspaces/terraform-azurerm-caf/examples/diagnostics_profiles/200-diagnostics-eventhub-namespaces
parameter_files=$(find ${configuration_folder} | grep .tfvars | sed 's/.*/-var-file &/' | xargs)

cd ${configuration_folder}/standalone

terraform init

terraform plan ${parameter_files}

```

To test this deployment in the example landingzone. Make sure the launchpad has been deployed first

```bash

rover \
  -lz /tf/caf/aztfmod/examples \
  -var-folder  /tf/caf/examples/diagnostics_profiles/200-diagnostics-eventhub-namespaces/ \
  -level level1 \
  -a [plan | apply | destroy]

```