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