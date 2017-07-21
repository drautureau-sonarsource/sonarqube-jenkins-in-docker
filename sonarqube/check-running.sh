response=$(curl -s -f http://localhost:9000/api/system/status)
status=$(echo $response | jq -r '.status')
if [ "$status" != "UP" ]; then
  exit 1
fi
