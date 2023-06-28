docker run -it --rm --name=ros-gscam --network=bridge \
--volume ./pipeline.launch.xml:/opt/ros/humble/share/gscam/examples/pipeline.launch.xml \
--device=/dev/video0:/dev/video0 \
ghcr.io/rosblox/ros-gscam:humble