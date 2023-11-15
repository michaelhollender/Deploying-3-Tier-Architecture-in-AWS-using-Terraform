resource "tls_private_key" "public_key" {
    algorithm = "RSA"
    rsa_bits  = 4096
}

resource "aws_key_pair" "three_tier_rsa_key" {
    key_name = var.three_tier_rsa_key
    public_key = tls_private_key.public_key.public_key_openssh
}