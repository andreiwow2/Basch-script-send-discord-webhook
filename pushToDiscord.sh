#!/bin/bash

title=$1
caption=$2
message=$3
color=$4

webhook_url="Your discord webhook link"

generate_post_data() {
  cat <<EOF
{
  "content": "$caption",
  "embeds": [{
    "title": "$title",
    "description": "$message",
    "color": "$color"
  }]
}
EOF
}

curl -H "Content-Type: application/json" -X POST -d "$(generate_post_data)" $webhook_url
