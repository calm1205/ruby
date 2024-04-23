# ベースイメージを最新のRubyイメージに指定
FROM ruby:3.0.6

# 必要なパッケージをインストール
RUN apt-get update -y && apt-get install -y \
  build-essential \
  libpq-dev

# Railsアプリケーションを作成するディレクトリを作成
WORKDIR /api

# RailsアプリケーションのGem依存関係をインストール
# COPY Gemfile Gemfile.lock ./
# COPY Gemfile ./
# RUN bundle install