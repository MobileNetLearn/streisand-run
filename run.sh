#!/usr/bin/env bash

CONTAINER="ryanjohnston/streisand-run"
REPO="git@github.com:jlund/streisand.git"

git clone $REPO

pushd streisand

docker run -it --rm \
  --name $CONTAINER \
  -v "$PWD":/usr/src/myapp:cached -w /usr/src/myapp \
  -v "$HOME"/.ssh:/root/.ssh \
  $CONTAINER \
  bash ./streisand

popd
