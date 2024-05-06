# module "demo_module" {
#   source = "git::https://github.com/zealvora/tmp-repo.git"
# }

# module "demo_module" {
#   source = "github.com/zealvora/tmp-repo.git"
# }

module "demo_module" {
  source = "github.com/zealvora/tmp-repo.git?ref=development"
}