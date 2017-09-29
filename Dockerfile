FROM alpine
COPY mdb_tester /bin/mdb_tester
ENTRYPOINT /bin/mdb_tester
