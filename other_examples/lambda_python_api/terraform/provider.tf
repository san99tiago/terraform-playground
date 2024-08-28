provider "aws" {
  region  = "us-east-1"

  default_tags {
    tags = {
      "Owner": "Santiago Garcia Arango",
      "Source"= "https://github.com/san99tiago/aws-fastapi-lambda",
      "Usage"= "Sample project to illustrate a quick easy FastAPI deployment on Lambda Functions"
    }
  }
}
