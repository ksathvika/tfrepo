
variable "var1" {
    type = list
    default = ["testresgrp1" , "testresgrp2" , "rgrp3"]
}



output "outvars1" {
    value = [for i in var.var1 : upper(i)]
}


output "outvars2" {
    value = [for i in var.var1 : upper(i) if length(i) > 6]
}
