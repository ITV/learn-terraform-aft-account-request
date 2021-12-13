module "hackday" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "itv-ct-hackday@root.itv.com"
    AccountName               = "itv-ct-hackday"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "james.roberts@itv.com"
    SSOUserFirstName          = "James"
    SSOUserLastName           = "Roberts"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Jose Castillo"
    change_reason       = "Create a new AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "hackday"
}
