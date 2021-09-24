STACK_NAME=nodeapiaws 
REGION=us-east-1 
CLI_PROFILE=myaws

EC2_INSTANCE_TYPE=t2.micro 

# Deploy the CloudFormation template
echo -e "\n\n=========== Deploying template.yml ==========="
aws cloudformation deploy \
  --region $REGION \
  --profile $CLI_PROFILE \
  --stack-name $STACK_NAME \
  --template-file template.yml \
  --no-fail-on-empty-changeset \
  --capabilities CAPABILITY_NAMED_IAM \
  --parameter-overrides \ 
    EC2InstanceType=$EC2_INSTANCE_TYPE