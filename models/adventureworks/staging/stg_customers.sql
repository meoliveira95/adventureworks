with
    source_data as (
        select 
            personid
            , modifieddate
            , rowguid
            , _sdc_table_version
            , territoryid
            , _sdc_received_at
            , _sdc_sequence
            , storeid
            , customerid
            ,_sdc_batched_at
     from
        {{ source( 'adventureworks_etl', 'customer') }}
    )

    select  * 
    from source_data