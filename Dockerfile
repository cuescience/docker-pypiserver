FROM ubuntu:14.04
RUN apt-get update
RUN apt-get install -y python3 python3-setuptools git make libpq-dev postgresql-client python3-dev
RUN easy_install3 pip
RUN ln -sf /usr/bin/python3 /usr/bin/python
RUN ln -sf /usr/bin/pip3 /usr/bin/pip
COPY ./ /app
WORKDIR /app
RUN pip install -r requirements.txt

VOLUME ["/data"]
CMD ["./run.sh"]
EXPOSE 8080
