FROM mono:6.10.0.104

RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/*
RUN wget https://github.com/IronLanguages/ironpython3/releases/download/v3.4.0-alpha1/ironpython_3.4.0-alpha1.deb -O ironpython3.deb \
 && dpkg -i ironpython3.deb

# Fix file privileges delivered through '.deb'
RUN chmod 755 /usr/bin/ipy*

ENTRYPOINT ["ipy3"]


