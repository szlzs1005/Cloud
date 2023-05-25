//Task 1
module "files" {
  source  = "./modules/files"
  content = "test"
  name    = "name"
}

//Task2
module "read" {
  source        = "./modules/read"
  input_variable = module.files.file_content_md5
}

//Task 3
module "write" {
  source = "./modules/write"

  answer1 = var.answers[0]
  answer2 = var.answers[1]
  answer3 = var.answers[2]
  answer4 = var.answers[3]
  answer5 = var.answers[4]
}

output "all_answers" {
  value = module.write.all_answers
}

//Task 4
module "data" {
  source = "./modules/data"
  generated_file_path = var.path
  depends_on = [module.read]
}