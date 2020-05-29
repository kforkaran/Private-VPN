aws cloudformation describe-stacks --stack-name $1 \
    --region us-west-2 \
    --query 'Stacks[0].Outputs[?OutputKey==`VPNServerAddress`].OutputValue' \
    --output text