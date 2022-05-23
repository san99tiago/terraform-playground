resource "aws_instance" "this" {
  count         = length(var.list_of_tags)
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = merge(
    { "Name" : "playground-instance-${count.index}" },
    var.list_of_tags[count.index]
  )
}
