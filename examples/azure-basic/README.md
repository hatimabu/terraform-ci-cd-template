# Azure Basic Terraform Example

This example adds a real Azure Infrastructure as Code path to the lab. It is separate from the provider-neutral `infra/` demo so the original zero-cost workflow can still be used without Azure credentials.

## Resources

The example creates:

- Resource group
- Virtual network
- Workload subnet
- Network security group
- Subnet-to-NSG association
- Storage account with safer defaults

The storage account uses:

- HTTPS-only traffic
- TLS 1.2 minimum
- Public blob access disabled
- Shared access keys disabled
- Public network access disabled
- Soft delete retention for blobs and containers
- Tags for ownership and cost tracking

## Usage

From this directory:

```bash
terraform init
terraform fmt -check
terraform validate
terraform plan
```

Do not run `terraform apply` unless you are signed in to the intended Azure subscription and understand the cost and cleanup requirements.

## Authentication

For GitHub Actions, use Azure OpenID Connect instead of storing a client secret. See `docs/azure-oidc-setup.md` from the repository root.

For local testing, sign in with the Azure CLI:

```bash
az login
az account set --subscription "<subscription-id>"
terraform plan
```

## Cleanup

If you apply this example, clean it up when finished:

```bash
terraform destroy
```
