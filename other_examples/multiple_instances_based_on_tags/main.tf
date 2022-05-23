resource "aws_instance" "this" {
  count         = var.enable_instances == true ? length(var.list_of_tags) : 0
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = merge(
    { "Name" : "playground-instance-${count.index}" },
    var.list_of_tags[count.index]
  )
}
