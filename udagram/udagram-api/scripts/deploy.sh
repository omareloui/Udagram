#! /usr/bin/env bash
set -x
set -e

AWS_CONFIG_FILE=$HOME/.aws/config

touch $AWS_CONFIG_FILE
chmod 600 $AWS_CONFIG_FILE

echo "[profile cli]"                                > $AWS_CONFIG_FILE
echo "aws_access_key_id=$AWS_ACCESS_KEY_ID"         >> $AWS_CONFIG_FILE
echo "aws_secret_access_key=$AWS_SECRET_ACCESS_KEY" >> $AWS_CONFIG_FILE


eb setenv AWS_PROFILE=$AWS_PROFILE
eb setenv AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
eb setenv AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY
eb setenv AWS_REGION=$AWS_REGION
eb setenv AWS_BUCKET=$AWS_BUCKET
eb setenv PGPORT=$PGPORT
eb setenv PORT=$PORT
eb setenv POSTGRES_DB=$POSTGRES_DB
eb setenv POSTGRES_HOST=$POSTGRES_HOST
eb setenv POSTGRES_PASSWORD=$POSTGRES_PASSWORD
eb setenv POSTGRES_USERNAME=$POSTGRES_USERNAME
eb setenv URL=$URL

eb deploy
