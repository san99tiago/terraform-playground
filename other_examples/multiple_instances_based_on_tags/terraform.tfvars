ami_id           = "ami-0022f774911c1d690"
instance_type    = "t2.micro"
enable_instances = true
list_of_tags = [
  {
    "Environment" : "dev",
    "CostCenter" : "DevOps",
    "Organization" : "Cool-Organization-1",
    "AppCode" : "code-12"
  },
  {
    "Environment" : "qa",
    "CostCenter" : "DevOps",
    "Organization" : "Cool-Organization-1",
    "AppCode" : "code-12"
  },
  {
    "Environment" : "dev",
    "Organization" : "Cool-Organization-2"
  }
]
