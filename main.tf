module "example" {
  source = "./modules/sshinstances"

  name_prefix = "ruddd" // will take info set in variables.tf, unless stated here
}