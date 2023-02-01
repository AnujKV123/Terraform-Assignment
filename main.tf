# block "lable1" lable2 {
#     identifier = expression
# }

resource "local_file" "foo" {
  filename = "file3.txt"
  content  = "hey how are you"
}

resource "local_file" "bar" {
  filename = "file2.txt"
  content  = "This is my second file"
}

resource "local_file" "foox" {
  filename = "file1.txt"
  content  = "hey how are you"
}

resource "local_file" "fooa" {
  filename = "MyFiles/file1.txt"
  content  = "This is my first file"
}

resource "local_file" "foob" {
  filename = "MyFiles/file2.txt"
  content  = "This is my second file"
}

# terraform localsk ***************************************

locals {
  xyz = "Hi how are you"
}
resource "local_file" "fooLx" {
  filename = "local1.txt"
  content  = local.xyz
}

resource "local_file" "fooLy" {
  filename = "local2.txt"
  content  = local.xyz
}

#  terraform random ******************************************

resource "local_file" "fooLz" {
  # filename = "${random_id.random-file-name.hex}.txt"
  filename = "${random_id.random-file-name.hex}.html"
  content  = local.xyz
}

resource "random_id" "random-file-name" {
  byte_length = 8
}

# terraform variables ****************************************

resource "local_file" "fooVar" {
  filename = var.var_filename
  content  = var.var_content
}

# variable "var_filename" {
#   type = string
#   description = "Enter filename"
#   default = "myfilexx.txt"

# }
# variable "var_content" {
#   type = string
#   description = "Enter content"
#   default = "hello how are you"

# }
# imp note:- if we want to change file name at run time then
# use - terraform plan -var "var_filename=batch7.py"


# terraform variable types **********************************************

# string
# string = "abc"

# number
# number = 12345

# list :- duplicate values are allowed, it is ordered, access by using index eg- a[0]
# list(number) = [1, 2, 3]
# list(string) = ["Ram", "Shyam", "Anuj"]
# list(any) = [1, 2, "Raju", "Kaju"]


# bool :- 
# bool = true, false


# set :- duplicate values are not allowed, it is unordered, it is not access by using indexes
# set(number) = [1, 2, 3]
# set(string) = ["Ram", "Shyam", "Anuj"]
# set(any) = [1, 2, "Raju", "Kaju"]


# map :- access using key
# map(any) = {
#   "name" : "Anuj"
#   "company" : "CEQ"
# }

# object :- it is use to defined variables
# object{
#   employee_id = number
#   employee_name = string
#   salary = number
# }

resource "local_file" "fooVarPct" {
  filename = var.practice_map["filename"]
  content  = var.practice_map["content"]
}

variable "practice_map" {
  type = map(string)
}

resource "local_file" "fooVarPctList" {
  filename = var.a[2]
  content  = "print('Hello World')"
}

variable "a" {
  type = list(string)
}
