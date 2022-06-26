addr=localhost:8082
# video_type: hls or mp4
video_type=${1:hls}
video_id=${2:test}

curl "http://${addr}/api/v1/video/url" \
    -sS \
    -H 'Content-Type: application/json' \
    -X GET \
    -d "{
        \"type\": \"${video_type}\"
        \"id\": \"${video_id}\"
    }" | jq .