# !/bin/bash

docker-compose run web rails new . --force --database=mysql
docker-compose build
# passを書き換える
docker-compose run web rails db:create
docker-compose up -d










# # 追加のコマンド
# docker-compose down

# # コンテナの一覧を見るため
# docker-compose ps

# # logを確認するため
# docker-compose logs


# docker-compose exec web /bin/bash