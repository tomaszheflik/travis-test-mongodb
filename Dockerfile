FROM debian
ADD mdb_tester /bin/mdb_tester
RUN chmod a+x /bin/mdb_tester
ENV MONGODB_HOST $MONGODB_HOST
CMD "/bin/mdb_tester"
