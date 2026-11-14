#!/usr/bin/env bash
# Usage: source scripts/env.sh

export ARM_SUBSCRIPTION_ID=$(az account show --query id -o tsv)
export TF_VAR_resource_group_name=$(az group list --query "[0].name" -o tsv)

echo "Subscription : $ARM_SUBSCRIPTION_ID"
echo "ResourceGroup: $TF_VAR_resource_group_name"
echo "Location     : $(az group show -n "$TF_VAR_resource_group_name" --query location -o tsv)"
