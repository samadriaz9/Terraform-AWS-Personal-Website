provider "aws" {

}

terraform {
    backend "s3" {
        bucket = "teraform-github-action"
        region = "eu-north-1"
        key = "github-action/terraform.tfstate"
        encrypt = true
        dynamodb_table = "teraform-github-action-lock"
    }
}