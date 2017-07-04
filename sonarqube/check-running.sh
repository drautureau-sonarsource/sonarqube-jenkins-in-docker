ret=$(curl -f http://localhost:9000/api/system/ping)
if [ "$ret" != "pong" ]; then
  exit 1
fi
