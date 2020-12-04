#Sharing the AMI
resource "aws_ami_launch_permission" "share" {
  count = "${length(var.ami_ids)}"
  image_id   = "${var.ami_ids[count.index]}"
  account_id = "${var.destination_account_id}"
}
