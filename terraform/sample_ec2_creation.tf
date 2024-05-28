provider "aws"{
 access_key=""   #put your access key here that is created while creating user
 secret_key=""   #put your secret key as same
 region=""       #provide in which region you want to create all services/resource/develope architecture

}
resource "aws_instance" "dev"{ 
# here we taken example of creating instance having name dev aws-provider create-instance dev-name
# add all required thing from aws ec2 which are mandatory to create instance
  tags={
      name="myvm" #add any name
      env="dev" #given name to vm
  }
  ami="" #ami id they having different id in different regions so put correct ami id as upper choosen region
  instance_type="t2.micro" #as per choice
  key_name="netra.pem" # it is by default created and downloaded priviously. but if we want create there is another script we have to add
  security_group=["default.ipat"] #aws_security_group.example_sg.name
  count=5
}
