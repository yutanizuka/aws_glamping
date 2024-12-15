ssh のパーミッションを 600 に設定

mac の場合

```
#e.g.
chmod 600 ~hogehoge/hogehoge.pem
```

ec2 インスタンスに接続

```
#e.g.
ssh -i ~hogehoge/hogehoge.pem ec2-user@12.34.56.789
```

windows の場合

teraterm や RLogin などのクライアントツール が必要

```
#e.g.
ssh -i C:\Users\hogehoge\hogehoge.pem ec2-user@12.34.56.789
```

## Apache のインストール

## Elastic IP の割り当て

## ドメインの作成

## wordpress のインストール

```
#e.g.
sudo amazon-linux-extras install -y php8.4
```

```
# ホームディレクトリに移動
cd ~
# wordpress のダウンロード
wget http://ja.wordpress.org/latest-ja.tar.gz

# ダウンロードしたファイルを解凍
tar -xzvf latest-ja.tar.gz

# 解凍したファイルを移動
cd wordpress
sudo cp -r * /var/www/html/
sudo chown apache:apache /var/www/html/ -R

# apache の再起動
sudo systemctl restart httpd.service

# apache のステータス確認
sudo systemctl status httpd.service
```

##DB の作成
EC2 にログインした状態で実行

```
mysql -h aws-glamping-db.c00000000000.ap-northeast-1.rds.amazonaws.com -u root -p
```

```
DB サブネットグループの作成
aws-glamping-db-subnet-group

```

## ELB の作成

AMI から EC2 インスタンスを作成
