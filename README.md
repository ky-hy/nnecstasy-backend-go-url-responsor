# nnecstasy-backend-go-url-responsor
video_idからmp4などの動画urlを返すサービスです


目次
- [nnecstasy-backend-go-url-responsor](#nnecstasy-backend-go-url-responsor)
- [必要ツール](#必要ツール)
- [開発手順](#開発手順)
  - [vscode利用者向け](#vscode利用者向け)
- [参考](#参考)


# 必要ツール

docker: 20.10.11
docker-compose: 1.29.2

# 開発手順

```sh
# git clone
$ git clone https://github.com/ky-hy/nnecstasy-backend-go-url-responsor.git url-responsor
$ cd ./url-responsor
# 開発用コンテナ起動
$ docker-compose up -d　url-responsor-dev --build
# 開発サーバー起動
$ docker-compose exec url-responsor-dev go run main.go
```

[http://localhost:8082/swagger/index.html](http://localhost:8082/swagger/index.html)にアクセスして、swagger(RESTAPIの実行環境)の画面が出ていればOKです。
## vscode利用者向け
vscodeの拡張機能 [Remote Development](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack) をインストールしてください。

```sh
# git clone
$ git clone https://github.com/ky-hy/nnecstasy-backend-go-url-responsor.git url-responsor
$ cd ./url-responsor
# vocode起動 
$ code .
```
ctrl(cmd) + shift + p を押して, 「Remote-Containers: Reopen in Container」を実行してください。
ターミナル上で `go run main.go` 実行し、
[http://localhost:8082/swagger/index.html](http://localhost:8082/swagger/index.html)にアクセスして、swagger(RESTAPIの実行環境)の画面が出ていればOKです。


# 参考
- https://code.visualstudio.com/docs/remote/containers