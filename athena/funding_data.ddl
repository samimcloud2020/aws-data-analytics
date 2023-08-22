CREATE EXTERNAL TABLE IF NOT EXISTS
athena_tutorial.funding_data (
  Permalink string,
  Company string,
  NumEmps string,
  Category string,
  City string,
  State string,
  FundedDate string,
  RaisedAmt string,
  RaisedCurrency string,
  Round string
) ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
  'separatorChar' = ',',
  'quoteChar' = '\"',
  'escapeChar' = '\\'
)
STORED AS TEXTFILE
LOCATION 's3://somesh123456/input/';
