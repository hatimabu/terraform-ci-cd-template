output "bucket_name" {
  value = aws_s3_bucket.demo.bucket
}

output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.demo.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.demo.public_ip
}

output "instance_state" {
  description = "Current state of the EC2 instance"
  value       = aws_instance.demo.instance_state
}