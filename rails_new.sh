# !/bin/bash

docker-compose run web rails new . --force --database=mysql
docker-compose build
# passを書き換える
docker-compose run web rails db:create
docker-compose up -d
