## Terraform configuration

terraform {
required_providers {
    random = {
        source = "hashicorp/random"
        version = "3.0.1"
    }
}

cloud {
            organization = "thugiang-test-tf-cloud"
            workspaces {name = "terraform-cloud-test"}
        }

required_version = ">= 1.1.0"
}
variable "name_length" {
    description = "The number of words in the pet name"
    default = "4"
}
resource "random_pet" "pet_name" {
    length = var.name_length
    separator = "-"
    }
output "pet_name" {
    value = random_pet.pet_name.id
}