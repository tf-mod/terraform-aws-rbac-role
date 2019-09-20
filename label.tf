# frigga name

locals {
  name = join("-", compact([var.name, var.stack, var.desc]))
}
