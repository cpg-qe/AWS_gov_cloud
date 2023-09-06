variable "access_key" {
}
variable "secret_key" {
}
variable "public_key_path" {
  	description = &lt;&lt;DESCRIPTION
Path to the SSH public key to be used for authentication.
Ensure this keypair is added to your local SSH agent so provisioners can
connect.
Example: ~/.ssh/terraform.pub
DESCRIPTION
    default = "./terraform.pub"
}

variable "key_name" {
	description = "Desired name of AWS key pair"
	default = "terraform-keypair"
}

variable "aws_region" {
	description = "AWS region to launch servers."
  	default     = "us-gov-east-1"
}

variable "aws_zone" {
 	 default = "us-gov-east-1a"
}

# Ubuntu Precise 12.04 LTS (x64)
variable "aws_amis" {
  	#default = "ami-0e97e46f"
	default ="ami-0efd49eddc5639cc5"
}

variable "prefix" {
	type = list(string)
	default = ["tfcpg", "test01"]
}
