#!/bin/bash
set -e

id -u ros &>/dev/null || adduser --quiet --disabled-password --gecos '' --uid ${UID} --uid ${GID} ros
usermod -aG video ros

source /opt/ros/${ROS_DISTRO}/setup.bash

exec "$@"