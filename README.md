# Cloud Infrastructure

This repository manages cloud infrastructure using Terraform, to provision and manage cloud infrastructure across multiple environments. The infrastructure is organised by cloud platform to ensure clarity, consistency, and safe separation of resources.

# Repository Structure

```
.
├── .github
│   └── workflows
│       └── terraform-ci.yml
├── aws
├── snowflake
├── .gitignore
└── README.md

```

- `.github/workflows` contains the GitHub Actions workflows used for continuous integration.
- `aws` folder containing AWS provisioned resources
- `snowflake` folder containing Snowflake provisioned resources

# Repository Workflow

Terraform planning and application are handled automatically by Atlantis, which is integrated with this repository and operates exclusively on Pull Request. Once Pull Request is made to the repo, 

- GitHub Actions runs validation checks
- Atlantis automatically runs terraform plan
- After reviewing the plan, Atlantis runs by commenting atlantis apply directly from the PR.

This workflow ensures that infrastructure changes are reviewed, validated, and applied in a safe and auditable way across all cloud platforms.