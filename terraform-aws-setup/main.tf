provider "aws"{
	region = "us-east-1"
}
resource "aws_instance" "hands_on_ec2"{
	ami= "ami-06c68f701d8090592"
	instance_type = "t2.micro"
	tags = {
		Name = "MyEC2Instance"
	}
}

resource "aws_s3_bucket" "hands_on_my_bucket"{
	bucket = "franciscobrizamarhandsonbucket"
	tags = {
		Name = "MyS3Bucket"
		Enviroment = "Teste"
	}
}
