# Terraform module for Azure Storage Account
Module will deploy Azure Storage Account and Storage Tables or Containers

## Module input variables
---
- `name` - name of the Storage Account
- `resource_group` - name of the resource group for the Storage Account
- `location` - location of the Storage Account (default: westeurope)
- `tier` - Storage account tier (default: Standard)
- `replication_type` - Storage Account replication type (default: LRS)
- `containers` - list of Objects for the Storage Account Contianers
  - `name` - Name of the container
  - `access_type` - Access type for the contiainer
- `tables` - List of string for the Storage Account Tables

## Usage
---
```hcl
module "storage_account" {
  source = "github.com/luxaflow/tf_storage_account.git"

  name              = "my-storageaccount"
  resource_group    = "my-resourcegroup"
  location          = "westeurope"
  tier              = "Standard"
  replication_type  = "LRS"

  containers = [
    {
      name = "container1"
      acces_type = "private"
    },
    {
      name = "container2"
      acces_type = "public"
    }
  ]

  tables = [
    "table1",
    "table2",
    "table3"
  ]
}
```

## Outputs
---
- `storage_account_tables` - list of storage account table names
- `storage_account_containers` - list of storage account container names


## Author
Created by [Lucas Wolfe](https://www.github.com/luxaflow)

## License
Apache 2 Licensed. See LICENSE for full details.
