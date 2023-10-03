module "vpc" {
  source = "git::https://github.com/jogendra-b54/tf-module-vpc.git"
 }

// You cannot variablize this piece of code in the source parameter

/*
module "vpc" {
  source = "git::https://github.com/jogendra-b54/tf-module-vpc.git?ref=v1.2.0"  //you can mentione which Tag  you can pull
}
*/

/*
module "vpc" {
  source = "git::https://github.com/jogendra-b54/tf-module-vpc.git?ref=514d3435gtrf44"  //you can also mention which commit you can pull
}
*/

/*
module "vpc" {
  source = "git::https://github.com/jogendra-b54/tf-module-vpc.git@dev"   //you can also mention which branch you can pull
}
*/