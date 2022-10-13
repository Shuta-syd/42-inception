### What is Docker?
	Dockerとはコンテナ技術を使用して、アプリケーションの環境構築を容易にするオープンソースソフトウェア。  
	ミドルウェアのインストールや各種環境設定をコード化して管理でき、共有などが容易になる。  
参考URL:  
	https://qiita.com/satken2/items/10b22bed7a331e425cfe
### What is Container Technology?
	コンテナとは、端的に言えばアプリケーションをホストOSから隔離する技術のことである。LinuxOSの中に隔離された空間を作り、他のコンテナ内のプロセスやホストOS上のプロセスに一切干渉せずに動作できる環境を作る。  
参考URL:  
	https://qiita.com/satken2/items/10b22bed7a331e425cfe

### What is Dockerfile?
	Dockerfileとは、新規にDockerイメージを作成するための手順を記したテキストファイル。Dockerイメージの設計図。Dockerfileは独自のDSL（ドメイン固有言語）。  

参考URL:
	https://y-ohgi.com/introduction-docker/2_component/dockerfile/
	https://www.youtube.com/watch?v=LQjaJINkQXY
	https://qiita.com/sky0621/items/d837c566b04464469fdb
	https://docs.docker.jp/engine/reference/builder.html#cmd

### What is docker-compose?
	複数のコンテナから成るサービスを構築・実行する手順を自動的にし、管理を容易にする機能。Docker compose では、compose ファイルを用意してコマンドを1 回実行することで、そのファイルから設定を読み込んですべてのコンテナサービスを起動することができる。  

参考URL:  
	https://qiita.com/TsutomuNakamura/items/7e90e5efb36601c5bc8a
	https://qiita.com/yuta-ushijima/items/d3d98177e1b28f736f04

### What is this subject ? 
	Use docker-compose to create LEMP ( L:Linux E:Nginx M:Mariadb P:Apache ) stack with Wordpress

### Procedure
1. 
2. 
3. 

参考URL:  
	https://docs.docker.jp/compose/environment-variables.html#env  
	https://qiita.com/yuta-ushijima/items/d3d98177e1b28f736f04  
	https://betterprogramming.pub/using-variables-in-docker-compose-265a604c2006  
	https://medium.com/edureka/docker-networking-1a7d65e89013  
	https://faun.pub/docker-networks-part-1-of-2-15a986a48d0a  
	https://www.debian.org/releases/buster/  
	https://knowledge.sakura.ad.jp/26522/  

### What is SSL??
	SSL（Secure Socket Layer）/ TLS（Transport Layer Security）は、通信の暗号化、改ざん検知、通信相手の認証を行う仕組みです。現在はプロトコルとしては主にTLSが使われていますが、慣例的にTLSのことも含めてSSLと総称されています。  

### What is Public Key Infrastructure?
	公開鍵と秘密鍵のキーペアからなる「公開鍵暗号方式」という技術を利用し、インターネット上で安全に情報のやりとりを行うセキュリティのインフラ。

### What is common key crypto system?
	共通鍵暗号方式とは、暗号化するための鍵とそれを復号するための鍵に同じものを使用する方式で、暗号化した際に使用した鍵は、復号する際にも必要になります。

参照URL:  
	https://college.globalsign.com/ssl-pki-info/ssl-encryptions/  
	https://college.globalsign.com/ssl-pki-info/pki/  
	https://qiita.com/k_kind/items/b87777efa3d29dcc4467

### What is nginx ?
	Webサーバとは、Webシステム上で、利用者側のコンピュータに対しネットワークを通じて情報や機能を提供するコンピュータおよびソフトウェアのこと。そして「Nginx」はWebサイトを公開・管理する際に使われるサーバソフトウェア、「Webサーバ」の1種。

参考URL:  
	https://hnavi.co.jp/knowledge/blog/nginx/#title1  
	https://qiita.com/morrr/items/929e9cb35914a7f3a652  
	https://qiita.com/morrr/items/7c97f0d2e46f7a8ec967  
	https://heartbeats.jp/hbblog/2012/06/nginx06.html  
	http://www2.matsue-ct.ac.jp/home/kanayama/text/nginx/node36.html
	https://tottoto-toto.hatenablog.com/
	https://github.com/nginxinc/docker-nginx/blob/master/mainline/alpine/Dockerfile
	https://nginx.org/en/docs/switches.html
	https://nginx.org/en/docs/ngx_core_module.html#daemon
	https://www.web-dev-qa-db-ja.com/ja/nginx/
	https://stackoverflow.com/questions/25970711/what-is-the-difference-between-nginx-daemon-on-off-option
	


### debian memo
- 「/etc/hosts」ファイルは、ホスト名とIPアドレスを対応させるためのファイル  
**What is PORT 80?**  
	TCPの80番をWebサーバがHTTPでWebブラウザなどと通信するために用いる。  
**What is PORT 443?**  
	TCPの443番をWebサーバがHTTPSでWebブラウザなどと通信するために用いる。  
### alpine memo
- パッケージマネージャー apk  
参考URL:
	https://blog.stormcat.io/post/entry/alpine-entry-apk/
