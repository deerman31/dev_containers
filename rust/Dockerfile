# ベースイメージを指定
FROM rust:latest

# zshをインストール
RUN apt-get update && apt-get install -y zsh

# デフォルトシェルをzshに変更
RUN chsh -s /bin/zsh

# 作業ディレクトリを設定
WORKDIR /usr/src/app

# 依存関係を事前に解決
COPY Cargo.toml Cargo.lock ./
RUN cargo fetch

# ソースコードをコピー
COPY . .

# アプリケーションをビルド
RUN cargo build --release

# デフォルトコマンドを設定
CMD ["cargo", "run"]

