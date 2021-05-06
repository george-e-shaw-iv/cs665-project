FROM mysql:8.0

ENV MYSQL_ROOT_PASSWORD root
ENV MYSQL_DATABASE cs665-project

COPY *.sql /docker-entrypoint-initdb.d/
