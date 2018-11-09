/*
output "elb_hostname" {
  value = "${module.web.elb.hostname}"
}
*/

output "region" {
  value = "${var.region}"
}

output "vpc_id" {
  value = "${module.networking.vpc_id}"
}

output "vpc_arn" {
  value = "${module.networking.vpc_arn}"
}

output "private_key_pem" {
  value = "${tls_private_key.ssh_key.private_key_pem}"
}
