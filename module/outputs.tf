output "vpc_id" {
    value = aws_vpc.main.id
}

output "public_subnet_id" {
    value = aws_subnet.public.id
}

output "private_subnet_id" {
    value = length(aws_subnet.private) > 0 ? aws_subnet.private[0].id : ""
}