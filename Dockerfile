FROM alpine
ADD mdb_tester /mdb_tester
RUN chmod a+x /mdb_tester
CMD /mdb_tester
