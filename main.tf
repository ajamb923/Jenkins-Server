// EC2 - Jenkins

resource "aws_instance" "jenkins-server" {
    ami = "ami-0263e4deb427da90e"
    instance_type = "t2.micro"
    associate_public_ip_address = true
    key_name = "NOVA_KP"
    user_data = file("userdata.sh")
    
    tags = {
        Name = "Jenkins-Server"
    }
}


