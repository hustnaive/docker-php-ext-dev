#install

* `git clone git@github.com:hustnaive/docker-php-ext-dev.git`
* `cd docker-php-ext-dev/`
* `git submodule update --init php-src`
* `cd php-src/`
* `git tag`
* `git checkout THE_TAG_OF_PHP_VERSTION_YOU_WANT_TO_BUILD`
* `cd ../`
* `docker build -t php-ext-dev .`

依次执行上述命令即可获得一个名为`php-ext-dev`的镜像，你可以如下运行这个镜像来获得一个PHP扩展开发环境。

我们的Linux版本是ubuntu 12.04，故该环境生成的扩展也仅限于ubuntu 12.04，其他版本的Linux发行版没有进行充分测试。

同时，生成的扩展所支持的PHP版本也限于你将`php-src`目录里面的PHP源代码切换于何种版本的TAG下。

#run

* `docker run -it -v /path/to/local/ext-src:/tmp/ext-src php-ext-dev /bin/bash`

运行以上命令，你将从镜像启动一个容器，并获得一个shell。 你可以在这个shell里面切换到扩展源代码目录`/tmp/ext-rc`里面执行`phpize`等命令编译扩展源代码。

以上命令将你本地的`/path/to/local/ext-src`映射到容器中的`/tmp/ext-src`；所以，你可以在本地修改，然后在容器shell中编译。


#develop

待续