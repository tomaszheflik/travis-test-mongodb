FROM alpine
ADD mdb_tester /mdb_tester
ENTRYPOINT /mdb_tester
