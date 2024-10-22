IMAGE_NAME = inception_image
CONTAINER_NAME = inception

.PHONY: build nocache up buildup down ps

# Dockerイメージをビルドする
build:
	docker build -t $(IMAGE_NAME) .

nocache:
	docker build --no-cache -t $(IMAGE_NAME) .
	up

# コンテナをバックグラウンドで起動する
up:
	docker run -d --name $(CONTAINER_NAME) $(IMAGE_NAME)

# buildとupをまとめる
buildup: build up

# コンテナを停止して削除する
down:
	docker stop $(CONTAINER_NAME)
	docker rm $(CONTAINER_NAME)

# コンテナのステータスを表示する
ps:
	docker ps -a
