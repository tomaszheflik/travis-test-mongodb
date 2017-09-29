FROM alpine
COPY mdb_tester /mdb_tester
ENTRYPOINT /mdb_tester
