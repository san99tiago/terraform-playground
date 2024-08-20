variable "aws_region" {
  description = "La región de AWS a usar"
  type        = string
}

variable "vpc_cidr_block" {
  description = "El bloque CIDR de la VPC"
  type        = string
}

variable "aws_availability_zones" {
  description = "Las zonas de disponibilidad en las que se crearán las subredes"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]  # Puedes ajustar según tu región
}

variable "vpc_subnet_cidr" {
  description = "CIDR para las subredes"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]  # Asegúrate de que coincida con las zonas de disponibilidad
}



variable "instance_ami_id" {
  description = "ID de la AMI para las instancias EC2"
  type        = string
}

variable "instance_type" {
  description = "Tipo de instancia EC2"
  type        = string
}

variable "elb_tags" {
  description = "Etiquetas para el ALB"
  type        = map(string)
  default     = {}
}
