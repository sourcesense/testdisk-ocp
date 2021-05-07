FROM debian
COPY ./entrypoint.sh /
RUN chmod u+rwx ./entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
