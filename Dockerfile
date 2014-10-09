FROM 6122a9f45418
MAINTAINER Chris Mosetick

RUN sed -i 's@http://archive.ubuntu.com/ubuntu/@http://ubuntu.osuosl.org/ubuntu@g' /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y aptitude
RUN aptitude update
RUN aptitude install -y r-base r-base-dev libcurl4-openssl-dev xvfb xauth xfonts-base libcairo-dev libxmu-dev wget curl libcurl-dev
RUN export HOME="/root"
RUN mkdir $HOME/Downloads
RUN cd $HOME/Downloads
RUN wget http://cran.revolutionanalytics.com/src/base/R-3/R-3.1.1.tar.gz
RUN tar xzf R-3.1.1.tar.gz
RUN cd R-3.1.1
RUN ./configure --with-x=yes
RUN make
RUN make install
