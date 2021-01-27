#!/bin/bash
find /opt/codedeploy-agent/deployment-root/c7694906-c580-4c28-82fc-7c9101b17b18/* -maxdepth 0 -type 'd' | grep -v $(stat -c '%Y:%n' /opt/codedeploy-agent/deployment-root/c7694906-c580-4c28-82fc-7c9101b17b18/* | sort -t: -n | tail -1 | cut -d: -f2- | cut -c 3-) | xargs rm -rf
sudo rm -rf /home/ec2-user/*