docker run -it --rm --name=ros-gscam \
--volume ./pipeline.launch.xml:/opt/ros/humble/share/gscam/examples/pipeline.launch.xml \
--device=/dev/video0:/dev/video0 \
--ipc=host --pid=host \
--network=host \
--env UID=$(id -u) \
--env GID=$(id -g) \
ghcr.io/rosblox/ros-gscam:humble
