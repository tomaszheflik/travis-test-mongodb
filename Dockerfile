FROM alpine
ADD mdb_tester mdb_tester
RUN chmod a+x mdb_tester
RUN ls -la
RUN file /mdb_tester
ENTRYPOINT /mdb_tester
