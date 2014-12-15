#### Cassandra 2.1 Docker image

This image is based on [poklet/cassandra], additionally enabling Cassandra [authentication] and [authorization].

Usage:

    docker run -d --name cassandra \
        -p 9042:9042 \ # or just plain -P
        arkadi/cassandra
    docker exec -ti cassandra /bin/bash
    $ cqlsh -u cassandra -p cassandra
    cqlsh> alter user cassandra with password 'new';
    cqlsh> create keyspace dev
      with replication = {'class': 'SimpleStrategy', 'replication_factor': 1};
    cqlsh> create user developer with password 'pass';
    cqlsh> grant all on keyspace dev to developer;

Check [pokle/cassandra] on GitHub for other options.

[poklet/cassandra]: https://registry.hub.docker.com/u/poklet/cassandra/
[pokle/cassandra]: https://github.com/pokle/cassandra
[authentication]: http://www.datastax.com/docs/datastax_enterprise3.0/security/native_authentication
[authorization]: http://www.datastax.com/dev/blog/a-quick-tour-of-internal-authentication-and-authorization-security-in-datastax-enterprise-and-apache-cassandra
