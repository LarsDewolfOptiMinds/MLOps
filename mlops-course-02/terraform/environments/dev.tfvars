environment = "dev"
aws_region  = "eu-north-1"


s3_buckets = [
  {
    key  = "my-tf-test-bucket-lars-349873"
    tags = {}
  }
]

ecr_repositories = [
  {
    key                        = "mlops-course-ehb-repository"
    image_tag_mutability       = "MUTABLE"
    image_scanning_configuration = {
      scan_on_push = true
    }
    tags = {}
  }
]