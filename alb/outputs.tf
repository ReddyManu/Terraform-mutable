output "PRIVATE_ALB_ARN" {
  value = aws_lb.private.arn
}

output "PUBLIC_ALB_ARN" {
  value = aws_lb.public.arn
}

output "PRIVATE_ALB_DNS" {
  value = aws_lb.private.dns_name
}

output "PUBLIC_ALB_DNS" {
  value = aws_lb.public.dns_name
}
