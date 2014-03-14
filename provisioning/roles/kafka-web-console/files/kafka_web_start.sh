#!/bin/bash
#
# chkconfig: 2345 98 1
# description: MyApp application
#

case "$1" in
start)
  su - apps <<'EOF'
cd /usr/local/kafka_web_console_v1.0 || exit 1
PATH=/usr/local/play-framework/play-2.1.1:$PATH
echo "Starting MyApp..."
play stage 
setsid target/start < /dev/null > /dev/null 2>&1 & 
EOF
  ;;
stop)
  su - apps <<'EOF'
cd /usr/local/kafka_web_console_v1.0 || exit 1
PATH=/usr/local/play-framework/play-2.1.1:$PATH
echo "Stopping Kafka Web Console..."
play stop
EOF
  ;;
esac