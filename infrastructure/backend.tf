terraform {
    backend "s3" {
        bucket          = "ta-terraform-tfstates-439272626435"
        key             = "sprint1/week8/day1/training-terraform/terraform.tfstate"
        dynamodb_table  = "terraform-lock"
    }
}