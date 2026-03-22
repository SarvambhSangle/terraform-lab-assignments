# Terraform Software Lab Completion

## Overview
This repository contains the completed Terraform assignments focusing on Infrastructure as Code (IaC) principles.

## Assignments Completed:
- **Day 1**: Local file provider and basic workflow.
- **Day 2**: Variables, Output, and Environment-specific `.tfvars`.
- **Day 3**: Docker Provider (Nginx Container setup). 
  *Note: Due to a local Docker API version mismatch (1.41 vs 1.44) on this Windows machine, the final apply failed, but the configuration logic was verified.*
- **Day 4**: Terraform Modules (Reusable Nginx module).
- **Day 5**: CI/CD (GitHub Actions workflow) and Validation.
- **Bonus**: Dynamic `for_each` resource creation.

## How to Verify
Run `terraform validate` in each directory to confirm syntax and logic accuracy.
