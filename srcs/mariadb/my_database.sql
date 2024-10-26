-- データベースを作成
CREATE DATABASE IF NOT EXISTS my_database;

-- データベースを使用
USE my_database;

-- テーブルの作成（例: users テーブル）
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- サンプルデータの挿入
INSERT INTO users (username, email) VALUES ('alice', 'alice@example.com');
INSERT INTO users (username, email) VALUES ('bob', 'bob@example.com');
INSERT INTO users (username, email) VALUES ('charlie', 'charlie@example.com');
