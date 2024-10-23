# 構築ステージを初期化し、ベースイメージを指定する
FROM debian:bullseye
# nginxのインストール
RUN apt-get update && apt-get install nginx -y
# Dockerはプロセスがフォアグラウンドで動いてないと、コンテナが終了する
# daemonをオフにしてフォアグラウンドで実行できるようにする
CMD ["nginx", "-g", "daemon off;"]
