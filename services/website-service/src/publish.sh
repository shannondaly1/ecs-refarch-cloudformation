IMAGE_REPO_NAME="jdfolino"
IMAGE_TAG="products"
AWS_ACCOUNT_ID="192078575311"
AWS_DEFAULT_REGION="us-east-1"
BUILD_ID="kwxkbwkbxkw323nm2emn3mn"

docker build -t $IMAGE_REPO_NAME:$IMAGE_TAG .
docker tag $IMAGE_REPO_NAME:$IMAGE_TAG $AWS_ACCOUNT_ID.dkr.ecr.$AWS_DEFAULT_REGION.amazonaws.com/$IMAGE_REPO_NAME:$BUILD_ID
docker push $AWS_ACCOUNT_ID.dkr.ecr.$AWS_DEFAULT_REGION.amazonaws.com/$IMAGE_REPO_NAME:$BUILD_ID

echo "Pushing the Docker image..."
docker tag $IMAGE_REPO_NAME:$IMAGE_TAG $AWS_ACCOUNT_ID.dkr.ecr.$AWS_DEFAULT_REGION.amazonaws.com/$IMAGE_REPO_NAME:$IMAGE_TAG
docker push $AWS_ACCOUNT_ID.dkr.ecr.$AWS_DEFAULT_REGION.amazonaws.com/$IMAGE_REPO_NAME:$IMAGE_TAG
