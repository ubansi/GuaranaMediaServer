# GuaranaMediaServer
Private Media Server. Movie, Photo, Manga etc

# Guarana Media Server
ローカル用メディアサーバのサーバサイドコード
ラズベリーパイ4で動作することを想定

# install

```shell
npm install
```

```shell
npm run build
```

```shell
npm start
```

# docker up
```shell
docker-compose up -d
```

# migration

```shell
npx prisma migrate dev --name init
```

# Front end 
[GuaranaMediaServer-front](https://github.com/ubansi/GuaranaMediaServer-front)リポジトリのdist配下をまるごとpublicへコピーする

同じ階層にcloneしてビルド済なら以下のコマンドでコピーできる。
`cp -r ../GuaranaMediaServer-front/dist/** ./public/`