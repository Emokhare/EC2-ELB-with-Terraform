resource "aws_route53_zone" "emokhare" {
  name = "emokhare.com"
}

resource "aws_route53_record" "www" {
  zone_id = aws_route53_zone.emokhare.id
  name    = "www.emokhare.com"
  type    = "A"
  ttl     = "300"
  records = ["10.0.0.1"]
}