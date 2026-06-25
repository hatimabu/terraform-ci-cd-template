# Azure OIDC Setup for GitHub Actions

This guide shows how to connect GitHub Actions to Azure without storing a client secret in GitHub.

The workflow uses GitHub OpenID Connect to request a short-lived Azure token at run time.

## Required GitHub Variables

Create these repository variables in GitHub:

- `AZURE_CLIENT_ID`
- `AZURE_TENANT_ID`
- `AZURE_SUBSCRIPTION_ID`

Repository variables are enough because these IDs are not secrets. Do not create a client secret for this workflow.

## Azure Setup

Create a Microsoft Entra application registration and service principal, then assign least-privilege access to the subscription or target resource group.

For a lab, `Contributor` on a dedicated learning resource group is usually enough. Avoid granting broad subscription access unless the lab requires it.

## Federated Credential

Add a federated credential to the Entra application registration.

Use these values:

- Issuer: `https://token.actions.githubusercontent.com`
- Subject: `repo:hatimabu/terraform-ci-cd-template:environment:azure-lab`
- Audience: `api://AzureADTokenExchange`

The subject above matches the `azure-lab` GitHub environment used by `.github/workflows/azure-terraform.yml`.

## GitHub Environment

Create a GitHub environment named `azure-lab`.

Recommended protection:

- Required reviewer before deployment.
- Deployment branch limited to `main`.

This keeps the Azure workflow manual and reviewed before it can create or change cloud resources.

## Workflow Behavior

The Azure workflow supports two manual actions:

- `plan`
- `apply`

Use `plan` first. Use `apply` only after reviewing the plan output and confirming the target subscription is correct.
