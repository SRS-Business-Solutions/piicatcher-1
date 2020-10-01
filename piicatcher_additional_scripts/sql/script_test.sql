select table_schema,table_name,column_name,ordinal_position from (select * from pii_test_columns order by table_schema, table_name, ordinal_position) q;
