## Bedrock

- http://bedrockdb.com/

### Required
  - Docker

### Setup
    # builds docker container
    $ make build

### Run
    # launches docker container
    $ make run
    # follow steps in the tutorial.md

### Articles
  - [FinDEVr SV 2016 / Expensify - Video](http://findevr.com/videos/findevr-silicon-valley-2016-expensify/)
  - [Your Database is Your Prison — Here’s How Expensify Broke Free](http://firstround.com/review/your-database-is-your-prison-heres-how-expensify-broke-free/)
  - [Discussion at YN](https://news.ycombinator.com/item?id=12739771)
  - [SQLite Newsgroup announcement](http://sqlite.1065341.n5.nabble.com/Introducing-Bedrock-SQLite-for-the-Enterprise-td92037.html)
  - [Prodution Setup](http://p2p-hackers.709552.n3.nabble.com/p2p-hackers-Advice-on-concurrent-relational-database-writes-td4025323.html)
  - [Re: [sqlite] Introducing Bedrock: SQLite for the Enterprise](https://groups.google.com/forum/m/#!topic/bedrock/cxEIMUcVyc4)
  - [Other Tech in Expensify](https://we.are.expensify.com/our-technology/)


### Backups

Additionally, Bedrock already has a backup feature: just send SIGHUP and it'll disconnect from peers, copy the database aside, and then reconnect.  So, just run a three node cluster, and send SIGHUP to one of the nodes to trigger its backup, and then upload that backup somewhere.

### Docs
  - https://github.com/Expensify/Bedrock/tree/master/docs
  - [Cache](http://bedrockdb.com/cache.html)
  - [Multizone](http://bedrockdb.com/multizone.html)

### Code
  - https://github.com/Expensify/Bedrock (DB Server)
  - https://github.com/Expensify/Bedrock-PHP (PHP Client)

### Community
  - https://gitter.im/Expensify-Bedrock/Lobby

### Sqlite links
  - http://charlesleifer.com/blog/five-reasons-you-should-use-sqlite-in-2016/
  - [We’re pretty happy with SQLite and not urgently interested in a fancier DBMS (beets.io)](https://news.ycombinator.com/item?id=11934826)
  - https://blogs.gnome.org/jnelson/2015/01/06/sqlite-vacuum-and-auto_vacuum/
  - http://www.sqlitetutorial.net/
  - [Engineers Shouldn’t Write ETL (stitchfix.com)](https://news.ycombinator.com/item?id=11312243)
  - https://news.ycombinator.com/item?id=11187907
