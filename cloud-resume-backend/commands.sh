#create an s3 bucket
aws s3 mb s3://cloudresume-backend-hallow

#package cloudformation
aws cloudformation package --s3-bucket cloudresume-backend-hallow --template-file template.yaml --output-template-file gen/template-generated.yaml

#deploy
aws cloudformation deploy --template-file gen/template-generated.yaml --stack-name cloudresume --capabilities CAPABILITY_IAM