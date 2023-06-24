resource "aws_route_53" "exampleDomain" {
  name = var.domainName
}
resource "aws_route53_record" "exampleDomain-a" {
  zone_id = aws_route53_zone.exampleDomain.zone_id
  name    = var.domainName
  type    = "A"
  alias {
    name                   = aws_s3_bucket.example.website_endpoint
    zone_id                = aws_s3_bucket.example.hosted_zone_id
    evaluate_target_health = true
  }
}