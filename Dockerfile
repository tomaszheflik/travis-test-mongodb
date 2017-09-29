FROM alpine
ADD mdb_tester mdb_tester
RUN chmod a+x mdb_tester
RUN ls -la
ENTRYPOINT ./mdb_tester
