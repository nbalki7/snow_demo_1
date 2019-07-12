FROM hashmapinc/sqitch:jenkins

COPY . /repo

RUN sqitch deploy "db:snowflake://$USERNAME:$PASSWORD@hashmap.snowflakecomputing.com/flipr?Driver=Snowflake;warehouse=sqitch_wh"