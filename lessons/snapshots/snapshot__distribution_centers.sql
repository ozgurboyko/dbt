{% snapshot snapshot__seed_distribution_centers %}

{{
    config(
      target_schema='dbt_ozgur',
      unique_key='id',
      strategy='check',
      check_cols=['name', 'latitude', 'longitude']
    )
}}

SELECT * FROM {{ source('thelook_ecommerce', 'distribution_centers') }}

{% endsnapshot %}