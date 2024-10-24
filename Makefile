# コンテナをビルドし、バックグラウンドで起動。変更がある場合は再ビルド
up:
	docker compose up -d --build

# すべてのコンテナを停止し、ネットワークやボリュームを削除
down:
	docker compose down

re: down up

# コンテナが動作し続ける限りログの出力を継続する
log:
	docker compose logs -f

ps:
	docker ps

psa:
	docker ps -a

# コンテナ、イメージ、ボリュームを全て削除
clean:
	docker compose down --rmi all -v

# 実行中のコンテナを再起動する
restart:
	docker compose restart
