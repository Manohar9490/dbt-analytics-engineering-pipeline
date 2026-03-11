{% test minimum_row_count(model, min_rows) %}
-- {{config(severity='warn')}}

    SELECT count(*) as cnt
    FROM {{ model }}
    HAVING count(*) < {{ min_rows }}

{% endtest %}