#!/bin/bash

api="https://mercuryretrogradeapi.com"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36"

function get_current_status() {
    curl --request GET \
        --url "$api/api" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function get_status_by_date() {
    # 1 - month: (integer): <1-12>
    # 2 - day: (integer): <1-31>
    # 3 - year: (integer): <yyyy>
    curl --request GET \
        --url "$api/api?date=$3-$1-$2" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}
