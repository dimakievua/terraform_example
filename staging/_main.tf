provider "aws" {
  region = "${var.region}"
  shared_credentials_file = "~/.aws/credentials"
}

# sed -i 's/\\n/\n/g' private_key.pem
resource "tls_private_key" "ssh_key" {
  algorithm   = "RSA"
  rsa_bits = "4096"
}

resource "aws_key_pair" "key" {
  key_name   = "${var.key_name}"
  public_key = "${tls_private_key.ssh_key.public_key_openssh}"
}
