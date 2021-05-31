FROM redis:6
RUN mkdir /etc/redis
RUN echo 'requirepass redis\nappendonly yes\ntcp-keepalive 300' > /etc/redis/redis.conf
CMD [ "redis-server", "/etc/redis/redis.conf"]
