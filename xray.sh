#!/bin/sh
if [ ! -f UUID ]; then
  UUID="0824ffd9-0f8e-4539-adeb-943acc950728"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

