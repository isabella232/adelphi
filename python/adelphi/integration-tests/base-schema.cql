CREATE KEYSPACE my_ks_0 WITH replication = {'class': 'SimpleStrategy', 'replication_factor': '1'}  AND durable_writes = true;

CREATE TYPE my_ks_0.address (
    street text,
    number int
);

CREATE TYPE my_ks_0.user (
    name tuple<text,text>,
    address frozen<address>
);

CREATE TYPE my_ks_0.collections (
    field1 frozen<user>,
    field2 frozen<map<frozen<user>, frozen<user>>>,
    field3 frozen<list<frozen<address>>>,
    field4 frozen<tuple<frozen<user>, frozen<address>>>
);

CREATE TABLE my_ks_0.my_table_0 (
    my_column_0 ascii,
    my_column_1 bigint,
    my_column_2 blob,
    my_column_3 boolean,
    my_column_4 decimal,
    my_column_5 double,
    my_column_6 float,
    my_column_7 inet,
    my_column_8 int,
    my_column_9 list<int>,
    my_column_10 map<int,int>,
    my_column_11 set<int>,
    my_column_12 tuple<int, tuple<text, double>>,
    my_column_13 text,
    my_column_14 timestamp,
    my_column_15 timeuuid,
    my_column_16 uuid,
    my_column_17 varchar,
    my_column_18 varint,
    user frozen<user>,
    collections frozen<collections>,
    PRIMARY KEY ((my_column_0, my_column_1), my_column_2, my_column_3)
) WITH CLUSTERING ORDER BY (my_column_2 ASC, my_column_3 ASC)
    AND compaction = {'class': 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy'}
    AND compression = {'sstable_compression': ''};
CREATE INDEX regular_index_my_table_0 ON my_ks_0.my_table_0 (my_column_0);
CREATE CUSTOM INDEX custom_index_my_table_0 ON my_ks_0.my_table_0 (my_column_5) USING 'org.apache.cassandra.index.sasi.SASIIndex';

CREATE TABLE my_ks_0.my_table_1 (
    my_column_0 ascii,
    my_column_1 bigint,
    my_column_2 blob,
    my_column_3 boolean,
    my_column_4 decimal,
    my_column_5 double,
    my_column_6 float,
    my_column_7 inet,
    my_column_8 int,
    my_column_9 list<int>,
    my_column_10 map<int,int>,
    my_column_11 set<int>,
    my_column_12 tuple<int, tuple<text, double>>,
    my_column_13 text,
    my_column_14 timestamp,
    my_column_15 timeuuid,
    my_column_16 uuid,
    my_column_17 varchar,
    my_column_18 varint,
    user frozen<user>,
    collections frozen<collections>,
    PRIMARY KEY ((my_column_0, my_column_1), my_column_2, my_column_3)
) WITH CLUSTERING ORDER BY (my_column_2 ASC, my_column_3 ASC)
    AND compaction = {'class': 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy'}
    AND compression = {'sstable_compression': ''};
CREATE INDEX regular_index_my_table_1 ON my_ks_0.my_table_1 (my_column_0);
CREATE CUSTOM INDEX custom_index_my_table_1 ON my_ks_0.my_table_1 (my_column_5) USING 'org.apache.cassandra.index.sasi.SASIIndex';

CREATE TABLE my_ks_0.my_table_2 (
    my_column_0 ascii,
    my_column_1 bigint,
    my_column_2 blob,
    my_column_3 boolean,
    my_column_4 decimal,
    my_column_5 double,
    my_column_6 float,
    my_column_7 inet,
    my_column_8 int,
    my_column_9 list<int>,
    my_column_10 map<int,int>,
    my_column_11 set<int>,
    my_column_12 tuple<int, tuple<text, double>>,
    my_column_13 text,
    my_column_14 timestamp,
    my_column_15 timeuuid,
    my_column_16 uuid,
    my_column_17 varchar,
    my_column_18 varint,
    user frozen<user>,
    collections frozen<collections>,
    PRIMARY KEY ((my_column_0, my_column_1), my_column_2, my_column_3)
) WITH CLUSTERING ORDER BY (my_column_2 ASC, my_column_3 ASC)
    AND compaction = {'class': 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy'}
    AND compression = {'sstable_compression': ''};
CREATE INDEX regular_index_my_table_2 ON my_ks_0.my_table_2 (my_column_0);
CREATE CUSTOM INDEX custom_index_my_table_2 ON my_ks_0.my_table_2 (my_column_5) USING 'org.apache.cassandra.index.sasi.SASIIndex';

CREATE KEYSPACE my_ks_1 WITH replication = {'class': 'SimpleStrategy', 'replication_factor': '1'}  AND durable_writes = true;

CREATE TYPE my_ks_1.address (
    street text,
    number int
);

CREATE TYPE my_ks_1.user (
    name tuple<text,text>,
    address frozen<address>
);

CREATE TYPE my_ks_1.collections (
    field1 frozen<user>,
    field2 frozen<map<frozen<user>, frozen<user>>>,
    field3 frozen<list<frozen<address>>>,
    field4 frozen<tuple<frozen<user>, frozen<address>>>
);

CREATE TABLE my_ks_1.my_table_0 (
    my_column_0 ascii,
    my_column_1 bigint,
    my_column_2 blob,
    my_column_3 boolean,
    my_column_4 decimal,
    my_column_5 double,
    my_column_6 float,
    my_column_7 inet,
    my_column_8 int,
    my_column_9 list<int>,
    my_column_10 map<int,int>,
    my_column_11 set<int>,
    my_column_12 tuple<int, tuple<text, double>>,
    my_column_13 text,
    my_column_14 timestamp,
    my_column_15 timeuuid,
    my_column_16 uuid,
    my_column_17 varchar,
    my_column_18 varint,
    user frozen<user>,
    collections frozen<collections>,
    PRIMARY KEY ((my_column_0, my_column_1), my_column_2, my_column_3)
) WITH CLUSTERING ORDER BY (my_column_2 ASC, my_column_3 ASC)
    AND compaction = {'class': 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy'}
    AND compression = {'sstable_compression': ''};
CREATE INDEX regular_index_my_table_0 ON my_ks_1.my_table_0 (my_column_0);
CREATE CUSTOM INDEX custom_index_my_table_0 ON my_ks_1.my_table_0 (my_column_5) USING 'org.apache.cassandra.index.sasi.SASIIndex';

CREATE TABLE my_ks_1.my_table_1 (
    my_column_0 ascii,
    my_column_1 bigint,
    my_column_2 blob,
    my_column_3 boolean,
    my_column_4 decimal,
    my_column_5 double,
    my_column_6 float,
    my_column_7 inet,
    my_column_8 int,
    my_column_9 list<int>,
    my_column_10 map<int,int>,
    my_column_11 set<int>,
    my_column_12 tuple<int, tuple<text, double>>,
    my_column_13 text,
    my_column_14 timestamp,
    my_column_15 timeuuid,
    my_column_16 uuid,
    my_column_17 varchar,
    my_column_18 varint,
    user frozen<user>,
    collections frozen<collections>,
    PRIMARY KEY ((my_column_0, my_column_1), my_column_2, my_column_3)
) WITH CLUSTERING ORDER BY (my_column_2 ASC, my_column_3 ASC)
    AND compaction = {'class': 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy'}
    AND compression = {'sstable_compression': ''};
CREATE INDEX regular_index_my_table_1 ON my_ks_1.my_table_1 (my_column_0);
CREATE CUSTOM INDEX custom_index_my_table_1 ON my_ks_1.my_table_1 (my_column_5) USING 'org.apache.cassandra.index.sasi.SASIIndex';

CREATE TABLE my_ks_1.my_table_2 (
    my_column_0 ascii,
    my_column_1 bigint,
    my_column_2 blob,
    my_column_3 boolean,
    my_column_4 decimal,
    my_column_5 double,
    my_column_6 float,
    my_column_7 inet,
    my_column_8 int,
    my_column_9 list<int>,
    my_column_10 map<int,int>,
    my_column_11 set<int>,
    my_column_12 tuple<int, tuple<text, double>>,
    my_column_13 text,
    my_column_14 timestamp,
    my_column_15 timeuuid,
    my_column_16 uuid,
    my_column_17 varchar,
    my_column_18 varint,
    user frozen<user>,
    collections frozen<collections>,
    PRIMARY KEY ((my_column_0, my_column_1), my_column_2, my_column_3)
) WITH CLUSTERING ORDER BY (my_column_2 ASC, my_column_3 ASC)
    AND compaction = {'class': 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy'}
    AND compression = {'sstable_compression': ''};
CREATE INDEX regular_index_my_table_2 ON my_ks_1.my_table_2 (my_column_0);
CREATE CUSTOM INDEX custom_index_my_table_2 ON my_ks_1.my_table_2 (my_column_5) USING 'org.apache.cassandra.index.sasi.SASIIndex';
