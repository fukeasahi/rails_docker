# !/bin/bash

docker-compose run web rails new . --force --database=mysql
# Gemfileが更新されたから
docker-compose build
sed -i -e '17s/password:/password: password/g' ./src/config/database.yml
sed -i -e '18s/host: localhost/host: db/g'     ./src/config/database.yml
docker-compose run web rails db:create
docker-compose up -d
