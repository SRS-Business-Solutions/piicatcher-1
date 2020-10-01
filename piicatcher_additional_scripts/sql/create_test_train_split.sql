--drop table pii_train_columns;
create table pii_train_columns as (select table_schema,table_name,column_name, ordinal_position, data_type from (select * from information_schema.columns where table_schema not in ('information_schema', 'performance_schema', 'mysql', 'sys') order by rand(9))q where mod(ordinal_position, rand(1)) not between 0.30 and .75);
--drop table pii_test_columns;
create table pii_test_columns as (select table_schema,table_name,column_name, ordinal_position, data_type from (select * from information_schema.columns a where table_schema not in ('information_schema', 'performance_schema', 'mysql', 'sys') and not exists(select null from pii_train_columns b where a.table_schema = b.table_schema and a.table_name = b.table_name and a.column_name = b.column_name)) q);

select count(0) from pii_train_columns a where exists(select null from pii_test_columns b where a.table_schema = b.table_schema and a.table_name = b.table_name and 
a.column_name = b.column_name);

select count(0) from pii_test_columns a where exists(select null from pii_train_columns b where a.table_schema = b.table_schema and a.table_name = b.table_name and 
a.column_name = b.column_name);

select count(0) from pii_train_columns a where exists(select null from pii_test_columns b where a.column_name = b.column_name);

select count(0) from pii_test_columns a where exists(select null from pii_train_columns b where a.column_name = b.column_name);

