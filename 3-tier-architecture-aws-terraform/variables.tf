variable "vpc_name" {
  type    = string
  default = "sudheer-vpc"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "subnet" {
  type = map(string)
  default = {
    "private-subnet" = "sudheer-privae",
    "public-subnet"  = "sudheer-public",
  }
}


variable "instance_type" {
  default = "t2.micro"
}