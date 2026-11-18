#!/bin/bash
set -e

WINDOW_SECONDS=3 
if [ -z "$HEALTH_TOPIC" ]; then
  echo "Error: No topic name provided." >&2
  exit 1
fi


. "/opt/ros/humble/setup.bash"


timeout $WINDOW_SECONDS ros2 topic echo --once $HEALTH_TOPIC > /dev/null 2>&1