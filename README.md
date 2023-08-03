
## Script resize images from s3 bucket.

- Fetch all images from S3 bucket to local machine.
- Resize images 50% and save with new name.
- Upload resized images to new S3 bucket.

## Environment and libraries

- MacOS/Linux
- [Imagemagick lib](https://imagemagick.org)
- [AWS CLI](https://docs.aws.amazon.com/cli/index.html)

## Setup

- Install AWS CLI (please refer to aws documentation)
- Config aws credential.
	- Create IAM user with S3 access permission, then get the credential
	- Config the credential to local machine by using:
		```
		aws configure
		```
- Install imagemagick lib.

	- For macOS:
		```
		brew install imagemagick
		```
	- For linux/ubuntu:
		```
		sudo apt install imagemagick
		```

## How to use

- Run with source code
	Clone this repository to your local machine. From root folder run:
	```
	sh script.sh test-medical-images test-medical-images-scaled
	```
- Run with docker
	```
	docker build -t resize-images:lastest -f ./Dockerfile .
	docker run --name resize-images -v ${HOME}/.aws/credentials:/root/.aws/credentials:ro resize-images:lastest
	```