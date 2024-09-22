variable "ami_id" { 
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "this is the ami_id of devops resource"

}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "tags" {
    type = map
    default = {
        Name = "backend"
        Project = "expense"
        Component = "backend"
        Environment = "Dev"
        Terraform = "true"
    }
}

variable "sg_name" {
    default = "allow_sshh"
}

variable "from_port" {
    default = 22
    type = number
}

variable "to_port" {
    default = 22
    type = number
}

variable "protocol" {
    default = "tcp"
    t
}

variable "ingress_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
    t
}