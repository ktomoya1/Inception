# 構築ステージを初期化し、ベースイメージを指定する
FROM debian:bullseye

# nginxのインストール
RUN apt-get update && apt-get install -y nginx

# ソースのコピー
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./html /var/www/html

# Dockerはプロセスがフォアグラウンドで動いてないと、コンテナが終了する
# daemonをオフにしてフォアグラウンドで実行できるようにする
CMD ["nginx", "-g", "daemon off;"]
