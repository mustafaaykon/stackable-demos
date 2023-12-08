"CREATE TABLE IF NOT EXISTS iceberg.nyc.nyc_csv (
    VendorID INT,
    lpep_pickup_datetime TIMESTAMP(6),
    lpep_dropoff_datetime TIMESTAMP(6),
    store_and_fwd_flag VARCHAR(255),
    RatecodeID INT,
    PULocationID INT,
    DOLocationID INT,
    passenger_count INT,
    trip_distance DOUBLE,
    fare_amount DOUBLE,
    extra DOUBLE,
    mta_tax DOUBLE,
    tip_amount DOUBLE,
    tolls_amount DOUBLE,
    ehail_fee VARCHAR(255),
    improvement_surcharge DOUBLE,
    total_amount DOUBLE,
    payment_type INT,
    trip_type INT,
    congestion_surcharge DOUBLE
) WITH (location='s3a://staging/taxi_tripdata.parquet', format = 'PARQUET')";