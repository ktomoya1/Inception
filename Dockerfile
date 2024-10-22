# 構築ステージを初期化し、ベースイメージを指定する
FROM debian:bullseye
# Dockerに使用するポートを通知する
# HTTPSを利用する
RUN apt-get update && apt-get install nginx -y
CMD ["nginx", "-g", "daemon off;"]
