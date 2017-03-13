start bedrock:

    $ /etc/init.d/bedrock start

connect via mysql:

    $ mysql -h 127.0.0.1

show all available tables:
    > SELECT name FROM sqlite_master WHERE type='table';


create a table:
    > CREATE TABLE t(x INTEGER PRIMARY KEY ASC, y, z);

distributed setup:

    $ bedrock -clean -nodeName node0 -db node0.db -priority 100 -serverHost localhost:8000 -nodeHost localhost:9000 -peerList node1:9001,node2:9002 -fork
    $ bedrock -clean -nodeName node1 -db node1.db -priority 101 -serverHost localhost:8001 -nodeHost localhost:9001 -peerList node0:9000,node2:9002 -fork
    $ bedrock -clean -nodeName node2 -db node2.db -priority 102 -serverHost localhost:8002 -nodeHost localhost:9002 -peerList node0:9000,node1:9001 -fork

Start Options:

    // from https://github.com/Expensify/Bedrock/blob/master/configs/bedrock.init
    THISNODE="bedrock"
    PRIORITY=200
    FLAGS="-v -cache 10001"
    DAEMON_OPTS="-fork -nodeName $THISNODE -db $BEDROCK_DB_PATH -serverHost 0.0.0.0:8888 -nodeHost 0.0.0.0:8889 -priority $PRIORITY -pidfile $PIDFILE -quorumCheckpoint 100 -readThreads 4 -plugins status,db,jobs,cache,mysql $FLAGS"
