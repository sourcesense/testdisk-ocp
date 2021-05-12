FROM debian
RUN apt-get update -y
RUN apt-get install fio -y
RUN apt-get install vim -y
COPY ./entrypoint.sh /
COPY ./fioconfig /tmp/
RUN chmod u+rwx ./entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
