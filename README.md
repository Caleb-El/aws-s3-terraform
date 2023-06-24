# aws-s3-terraform by ikeri ebenezer

the goal here is to create an S3 bucket to host the static files of our website.

also i added policies to handle the followings;

1. Turn off "Block all public access" - this is turned off by default in Terraform, so there is nothing to do about it
2. Configure "Static website hosting" enabled and provide an index document (e.g. index.html) - you could also provide an error document
3. Attach a bucket policy to allow read access

also i added an optional route53 config just incase we intend going that route.

how to spin up infra:
1. terraform init (to initialize terraform)
2. terraform plan: to see the resources that are going to be provisioned (or changed)
3. terraform apply:  to deploy them
