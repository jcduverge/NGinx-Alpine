#!/bin sh

OLD_V=$1
NEW_V=$2

docker rmi dreg.pasonacareer-labo.net:5000/template/alpine-nginx:$OLD_V
docker rmi alpine-nginx:$OLD_V
docker build -t alpine-nginx:$NEW_V ./nginx
docker tag alpine-nginx:$NEW_V dreg.pasonacareer-labo.net:5000/template/alpine-nginx:$NEW_V
docker push dreg.pasonacareer-labo.net:5000/template/alpine-nginx:$NEW_V
