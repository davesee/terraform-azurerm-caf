You can test this module outside of a landingzone using

```
cd /tf/caf/examples/compute/proximity_placement_group/standalone

terraform init

terraform [plan | apply | destroy] \
  -var-file ../configuration.tfvars

Note : Change the custom_data path in the configuration file, relative to the path currently you are in. It wil error out otherwise.

```

To test this deployment in the example landingzone. Make sure the launchpad has been deployed first

```bash

rover \
  -lz /tf/caf/landingzones/caf_example \
  -var-folder  /tf/caf/examples/compute/proximity_placement_group/ \
  -level level1 \
  -a [plan | apply | destroy]

```