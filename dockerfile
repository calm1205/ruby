# ベースイメージを最新のRubyイメージに指定
FROM ruby:3.0.6

# 必要なパッケージをインストール
RUN apt-get update -y && apt-get install -y \
  build-essential \
  libpq-dev

# アプリケーションを作成するディレクトリを作成
WORKDIR /app

RUN gem install debug