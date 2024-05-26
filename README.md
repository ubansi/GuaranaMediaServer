# GuaranaMediaServer
Private Media Server. Movie, Photo, Manga etc

# Description
ローカル用メディアサーバのサーバサイドコード
ラズベリーパイ4で動作することを想定

# docker up
サービスは
* backend (node.js v18)
* MySQL 8 (for develop)
* MySQL 8 (for Migration)
の３つ

```shell
docker-compose build
docker-compose up -d
```

# migration

```shell
npx prisma migrate dev --name init
```
ただし、データはすべて消える

# Front end 
[GuaranaMediaServer-front](https://github.com/ubansi/GuaranaMediaServer-front)リポジトリのdist配下をまるごとpublicへコピーする

同じ階層にcloneしてビルド済なら以下のコマンドでコピーできる。
`cp -r ../GuaranaMediaServer-front/dist/** ./public/`