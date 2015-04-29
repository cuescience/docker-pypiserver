FROM registry.cuescience.de/python3-base:latest
ONBUILD COPY ./ /app
ONBUILD WORKDIR /app
RUN pip install -r requirements.txt

VOLUME ["/data"]
CMD ["./run.sh"]
EXPOSE 8080
