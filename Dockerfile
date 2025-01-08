# Amazon Linuxをベースイメージとして使用
FROM amazonlinux:2

# 必要なパッケージをインストール
RUN yum update -y && \
    yum install -y httpd && \
    yum clean all

# Apacheがリッスンするポート80を公開
EXPOSE 80

# コンテナ起動時にApacheをフォアグラウンドで実行
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
