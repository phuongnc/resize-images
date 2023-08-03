

## Script resize images from s3 bucket.
- Fetch all images from S3 bucket to local machine.
- Resize images 50% with new name
- Upload resized images to new S3 bucket.

## Environment and libraries
- Macos or Linux
- Imagemagick library
- Aws CLI

## Setup
 - Install AWS CLI
 - Config local credential.
	 - Create IAM user with S3 access permission, then get credential
	 - Config the credential to local machine by using:
	 ```
	  aws configure 
	 ```
 - Install imagemagick lib.
	For macOS: 
	```
	brew install imagemagick
	```
	For linux/ubuntu:
	```
	sudo apt install imagemagick
	```

## How to use
Clone this repository to your local machine. From root project run:
```
sh script.sh test-medical-images test-medical-images-scaled
```
