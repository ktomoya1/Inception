# 構築ステージを初期化し、ベースイメージを指定する
FROM debian:bullseye

# nginxのインストール
RUN apt-get update && apt-get install -y nginx

# ソースのコピー
COPY ./nginx.conf /etc/nginx/nginx.conf

COPY ./index.php /var/www/html/index.php
COPY ./index.html /var/www/html/index.html

# Dockerはプロセスがフォアグラウンドで動いてないと、コンテナが終了する
# daemonをオフにしてフォアグラウンドで実行できるようにする
CMD ["nginx", "-g", "daemon off;"]
