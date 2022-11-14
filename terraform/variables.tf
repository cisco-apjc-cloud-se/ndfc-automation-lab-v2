### DCNM Variables
variable "dcnm_user" {
  type = string
}

variable "dcnm_password" {
  type = string
}

variable "dcnm_url" {
  type = string
}

variable "dcnm_fabric" {
  type = string
}

variable "platform" {
  type = string
}

### Switches Object for Name to Serial Lookup ###
variable "switches" {
  type = map(object({
    name = string
    fabric = string
    }))
}
