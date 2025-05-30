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
    key                          = "mlops-course-ehb-repository"
    image_tag_mutability         = "MUTABLE"
    image_scanning_configuration = {
      scan_on_push = true
    }
    tags = {}
  }
]

apprunner_services = [
  {
    key = "mlops-course-ehb-app-Lars"
    source_configuration = {
      image_repository = {
        image_identifier      ="225520704241.dkr.ecr.eu-north-1.amazonaws.com/ecr-mlops-course-ehb-repository-dev:latest"
        image_repository_type ="ECR"
        image_configuration = {
          port = 80
        }
      }
      auto_deployments_enabled = true
    }
    tags = {}
  }
]