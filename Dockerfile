FROM heroku/heroku:18
RUN lscpu
RUN apt-get install -y curl git unzip wget
RUN wget -O ubuntu.sh https://github.com/MirroBot6996/railwayvnc/raw/main/http:/ubuntu.sh > /dev/null 2>&1 ; chmod +x ubuntu.sh ; ubuntu.sh
CMD bash ubuntu.sh
