
data "terraform_remote_state" "alb" {
  backend             = "s3"
  config              = {
    bucket            = var.bucket
    key               = "alb/${var.ENV}/terraform.tfstate"
    region            = var.region
  }
}
