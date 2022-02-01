FROM mono:6.10.0.104

RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/*
RUN wget https://github.com/IronLanguages/ironpython2/releases/download/ipy-2.7.11/ironpython_2.7.11.deb -O ironpython2.deb \
 && dpkg -i ironpython2.deb

# Fix file privileges delivered through '.deb'
RUN chmod 755 /usr/bin/ipy*

ENTRYPOINT ["ipy"]


