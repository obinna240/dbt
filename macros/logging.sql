{% macro sample_logger() %}
    {{ log("Sample log", info=True) }}
{% endmacro %}