FROM alpine
ADD mdb_tester /bin/mdb_tester
RUN chmod a+x /bin/mdb_tester
CMD "/bin/mdb_tester"
