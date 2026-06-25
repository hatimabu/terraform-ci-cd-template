# Security Policy

This repository is a Terraform CI/CD learning lab. The default `infra/` path uses local/demo resources only, while `examples/azure-basic/` contains a real Azure example that can be deployed after OpenID Connect is configured.

## Security Controls

The GitHub Actions pipeline includes:

- Terraform format and validation checks before merge.
- Terraform plan generation for pull request review.
- Checkov scanning for Terraform policy and misconfiguration checks.
- Trivy config scanning for high and critical Infrastructure as Code risks.
- Uploaded scan artifacts for review and troubleshooting.
- Manual Terraform apply to avoid automatic infrastructure changes.
- Azure OpenID Connect authentication for the real Azure workflow.

## Risks This Lab Is Designed To Catch

For the Azure example and future cloud resources, the security stage should help identify issues such as:

- Public storage exposure.
- Overly permissive network rules.
- Missing encryption settings.
- Missing logging or diagnostic settings.
- Hardcoded secrets or sensitive values.
- Missing resource tags for ownership and cost tracking.
- Unsafe defaults introduced through pull requests.

## Triage Process

When a security scan fails:

1. Open the failed GitHub Actions run.
2. Review the Checkov and Trivy logs.
3. Download the uploaded report artifacts.
4. Identify the affected Terraform resource and policy ID.
5. Fix the Terraform code or document a justified exception.
6. Re-run the pull request checks before merging.

## Exception Guidance

Security exceptions should be rare and documented in the pull request. A useful exception note should include:

- The policy ID.
- The affected resource.
- Why the finding is acceptable for this lab or environment.
- What would need to change before using the same pattern in production.

## Reporting

This is a personal learning project. Do not report sensitive issues through public GitHub comments if the issue includes credentials, tokens, or private infrastructure details.
