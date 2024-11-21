#Set up CloudFront and Route53.

resource "aws_cloudfront_distribution" "cdn" {
  origin {
    domain_name = aws_s3_bucket.mybucket.bucket_regional_domain_name
    origin_id   = "S3-my-origin"
  }
}

resource "aws_route53_record" "cdn_record" {
  zone_id = "Z1234567890"
  name    = "cdn.example.com"
  type    = "CNAME"
  ttl     = 300
  records = [aws_cloudfront_distribution.cdn.domain_name]
}
