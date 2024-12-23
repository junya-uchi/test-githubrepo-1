# Amazon Linux 2をベースイメージとして使用
FROM amazonlinux:2



# 必要なパッケージのインストール
RUN yum update -y && \
   yum install -y httpd \
   yum clean all



# タイムゾーンの設定（例：東京）
RUN yum install -y tzdata && \
   cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
   echo "Asia/Tokyo" > /etc/timezone



# Apacheをフォアグラウンドで実行
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
