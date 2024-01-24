# PRIMITIVE DATA TYPES

#string

# Define a variable for a string value (e.g., server name)
variable "server_name" {
  type        = string
  description = "Name of the server"
  default     = "web-server"
}

# boolen

# Define a variable for a boolean value (e.g., to enable/disable a feature)
variable "enable_feature" {
  type        = bool
  description = "Enable or disable the feature"
  default     = true
}

# numeric
  
# Define a variable for a numeric value (e.g., number of instances)
variable "instance_count" {
  type        = number
  description = "Number of server instances"
  default     = 3
}


#COLLECTION TYPES IN TERRAFORM:

# Collections type serve as containers for managing multiple values, usually of the same or similar types.

#list
variable "my_list" {
  type        = list(string)
  description = "example of a list of string type variable"
  default     = ["item1", "item2", "500", "five"]
}

#list(any)

# If you want to create a variable that allows for a list with elements of any type, you can use list(any)

variable "mixed_list" {
  type        = list(any)
  description = "A list allowing elements of any type"
  default     = ["item1", 42, true, 3.14]
}

# map

# Define a variable for a map of string values (e.g., key-value pairs)

variable "my_map" {
  type        = map(string)
  description = "A map representing key-value pairs"
  default     = {
    key1 = "value1"
    key2 = "value2"
  }
}

#set

variable "my_set" {
  type    = set(string)
  default = ["value1", "value2", "value3"]
}



#STRUCTURAL TYPES IN TERRAFORM
#objects

variable "user" {
  type = object({
    name  = string
    email = string
    age   = number
  })
}


# tuple(): A sequence of values each with their own type

variable "example_tuple" {
  type = tuple([string, number, bool])
}



