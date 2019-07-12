FROM hashmapinc/sqitch:jenkins

COPY . /repo

ENTRYPOINT  ['sqitch', 'deploy', '"db:snowflake://$USERNAME:$PASSWORD@hashmap.snowflakecomputing.com/flipr?Driver=Snowflake;warehouse=sqitch_wh"']