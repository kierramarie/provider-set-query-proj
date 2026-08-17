resource "random_pet" "prefix1" {
  length = 4
}

resource "random_pet" "prefix2" {
  length = 4
}

output "prefix1" {
    value = random_pet.prefix1.id
}

output "prefix2" {
    value = random_pet.prefix2.id
}
