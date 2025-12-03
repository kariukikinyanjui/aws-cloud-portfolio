output "s3_bucket_website_endpoint" {
  value = "http://${aws_s3_bucket.website_bucket.bucket}.s3-website.localhost.localstack.cloud:4566"
}

output "cloudfront_domain_name" {
  value = aws_cloudfront_distribution.s3_distribution.domain_name
}

output "route53_zone_nameservers" {
  value = aws_route53_zone.main.name_servers
} 
