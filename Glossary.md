### What is Docker?
	Dockerとはコンテナ技術を使用して、アプリケーションの環境構築を容易にするオープンソースソフトウェア。  
	ミドルウェアのインストールや各種環境設定をコード化して管理でき、共有などが容易になる。
	
	Dockerでは、ソフトウェア開発に利用可能なアプリケーションを標準化された単位にパッケージ化することができます。この単位（コンテナ）には、アプリケーションのコードと依存関係が含まれているため、どのようなコンピューティング環境でも簡単に実行できる

#### What are benefits of Docker over VMs?
	VMには、OSとアプリケーションの完全なコピーに加え、必要なバイナリやライブラリも格納されるため、コンピュータ上で数十GB近くの容量を占めてしまうことがあります。また、ゲストOS用にハードウェアを仮想化すると、かなりのオーバーヘッドが発生することがある。
	それに対してDockerはOSを仮想化するのがコンテナであり、コードと依存関係の両方を格納することができるアプリレイヤーにある仮想空間で、同じマシン上で、複数のコンテナを個別に実行することができる。その結果、通常、容量を抑えることができる。

#### Hypervisor vs Container
	ハイパーバイザ型はハイパーバイザにゲストOSをインストールし、物理マシンのメモリやプロセッサを仮想的に割り当てることで物理マシン上にあたかも複数のOSが起動してるかのような状態を作り出す仮想化技術。対してコンテナ型はアプリケーションを実行するための領域（ユーザ空間）を複数に分割して利用する仮想化技術である。ハイパーバイザ型はホストOSに依存しないが、コンテナ型はホストOSに依存しており、同じOS上で実現するので、全てのコンテナは同じOSしか使えない。コンテナは、ハイパーバイザのように、個別にCPUやメモリ、ストレージなどを割り当てる必要がないためシステム資源のオーバーヘッド（仮想化のために割り当てられる資源や能力）が少なく済む。

![container_vs_hypervisor](https://image.itmedia.co.jp/enterprise/articles/1506/08/kz_its01.jpg)

#### Is it possible to set up a linux environment on MacOS using Docker?
	DockerはLinuxコンテナの技術を活用しており、親OSはLinuxに限られる。	MacOSはLinuxではないためDockerは動作しないが、Docker for Macというソフトウェアを使用することでDockerを使用している。
	Docker for Macでは、Macにデフォルトで入っている仮想化ツール「HyperKit」を使ってMacで仮想マシンを立ち上げ、Linuxを起動しています。それによって、Mac上にDockerホストを作成している。
	参考URL: https://teratail.com/questions/142866 https://qiita.com/nogizaka46/items/c48728d6c640a3e9d6aa

#### What is Docker image?
	Docker imageはアプリケーションの実行に必要なソースコード、依存関係、ツールを含んだパッケージで、コンテナ作成時に指示を出す読み取り専用のテンプレート、設計書。
docker-composeを使用した場合、DockerHubなどを使用して複数のコンテナを一括で作成できる。対してDocker-composeを使用しなかった場合Dockerfileを使用して1つのコンテナしか作成できない。  
#### What is docker-compose?
	複数のコンテナから成るサービスを構築・実行する手順を自動的にし、管理を容易にする機能。Docker compose では、compose ファイルを用意してコマンドを1 回実行することで、そのファイルから設定を読み込んですべてのコンテナサービスを起動することができる。  

	※ docker containerはバックグランドでプロセスが走ってないとExit 0で正常終了してしまうためcommand: tail -f /dev/null

#### What is Dockerfile?
	Dockerfileとは、新規にDockerイメージを作成するための手順を記したテキストファイル。Dockerイメージの設計図。Dockerfileは独自のDSL（ドメイン固有言語）。  

	※ Dockerfile内で相対パスを使用する場合、docker-compose.yml build contextで指定したdirからの相対パスを使用する必要がある

#### What is Docker Hub?
	Docker Hubは、コンテナイメージを検索・共有できるプラットフォーム。コミュニティ開発者、オープンソースプロジェクト、独立系ソフトウェアベンダー（ISV）提供のリソースにアクセスできる、世界最大のコンテナイメージのリポジトリ。

#### The difference between a Docker image used with docker-compose and without docker-compose
	docker-composeを使用した場合、DockerHubなどを使用して複数のコンテナを一括で作成できる。対してDocker-composeを使用しなかった場合Dockerfileを使用して1つのコンテナしか作成できない。  
