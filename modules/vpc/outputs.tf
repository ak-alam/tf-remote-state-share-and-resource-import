output "vpcId" {
  value = aws_vpc.vpc.id
}
output "public_subnet" {
  value = aws_subnet.public_subnet.*.id
}
output "private_subnet" {
  value = aws_subnet.public_subnet.*.id
}
