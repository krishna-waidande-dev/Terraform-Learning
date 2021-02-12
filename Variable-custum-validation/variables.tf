variable "imageid" {
  type = string

  validation {
    condition = length(var.imageid) > 4 && substr(var.imageid,0,4)=="ami-"
    error_message = "The imageid value must be a vaid AMI Id. Should start with ami-<id>."
  }
}