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
