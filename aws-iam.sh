aws sts assume-role --role-arn arn:aws:iam::123456789101:role/AdminRole --role-session-name "iam_roleAdmin" > assume-role-output.json

export AWS_ACCESS_KEY_ID=$(jq -r .Credentials.AccessKeyId assume-role-output.json)
export AWS_SECRET_ACCESS_KEY=$(jq -r .Credentials.SecretAccessKey assume-role-output.json)
export AWS_SESSION_TOKEN=$(jq -r .Credentials.SessionToken assume-role-output.json)

echo $AWS_ACCESS_KEY_ID
echo $AWS_SECRET_ACCESS_KEY
echo $AWS_SESSION_TOKEN
