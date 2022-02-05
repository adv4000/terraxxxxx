variable "file_name" {
  default = "test_file.txt"
}

variable "file_text" {
  default = "Hello, this is test text inside the file!"
}

variable "tags" {
  default = {
    Owner       = "Denis Astahov"
    Environment = "prod"
  }
}
