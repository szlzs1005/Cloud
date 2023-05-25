//Task 1
module "files" {
  source  = "./modules/files"
  content = "test"
  name    = "name"
}
