#!/bin/sh
exec > script.log 2>&1
aws s3 sync s3://$1 ./$1
mkdir -p $2
find ./$1 -type f -name '*.jpg' -exec convert \{} -verbose -set filename:fname "%[basename]" -resize 50%\> "./$2/%[filename:fname].scaled50.jpg" \;
aws s3 ls  s3://$2 || aws s3api create-bucket --bucket $2 --region ap-southeast-1 --create-bucket-configuration LocationConstraint=ap-southeast-1 #aws s3 mb s3://$2
aws s3 cp ./$2 s3://$2/ --recursive