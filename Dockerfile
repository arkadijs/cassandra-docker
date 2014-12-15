FROM poklet/cassandra:latest
MAINTAINER Arkadi Shishlov <arkadi.shishlov@gmail.com>
RUN sed -ri -e 's/^(authenticator:).*/\1 PasswordAuthenticator/' -e 's/^(authorizer:).*/\1 CassandraAuthorizer/' /etc/cassandra/conf/cassandra.yaml
