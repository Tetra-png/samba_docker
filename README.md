# samba_docker
プライベートとパブリックのsamba共有フォルダを作成する

## 使い方

### Docker imageの作成
```
docker image build -t tetra61/samba:1.0 .
```

### ユーザー名パスワードの設定
docker-compose.ymlのenvironmentに設定したいユーザー名とパスを入力

### ドライブの設定
docker-compose.ymlのvolumesに  
プライベート共有フォルダ
```
- ホストマシンのディレクトリ:/home/設定したユーザー名
```
パブリック共有フォルダ
```
- ホストマシンのディレクトリ:/home/public
```