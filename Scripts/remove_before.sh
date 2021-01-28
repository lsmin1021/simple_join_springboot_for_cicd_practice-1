#!/bin/bash
find /opt/codedeploy-agent/deployment-root/edf98d7c-86e6-4c76-a1ba-b8fd289803a2/* -maxdepth 0 -type 'd' | grep -v $(stat -c '%Y:%n' /opt/codedeploy-agent/deployment-root/edf98d7c-86e6-4c76-a1ba-b8fd289803a2/* | sort -t: -n | tail -1 | cut -d: -f2- | cut -c 3-) | xargs rm -rf
sudo rm -rf /home/ec2-user/*
