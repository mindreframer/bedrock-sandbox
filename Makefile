build:
		docker build -t bedrock-sandbox -f Dockerfile .


run:
		docker run --rm -it bedrock-sandbox  bash
