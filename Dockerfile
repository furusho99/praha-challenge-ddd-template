# ベースイメージを指定
FROM node:20

# 作業ディレクトリを作成
WORKDIR /app

# パッケージファイルをコピー
COPY package*.json ./

# 依存関係をインストール
RUN npm install -g pnpm
RUN pnpm install

# アプリケーションのソースコードをコピー
COPY . .

# アプリケーションを起動
CMD ["pnpm", "run", "dev"]
