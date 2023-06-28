FROM ros:humble-ros-core

RUN apt-get update && apt-get install -y --no-install-recommends \
    gstreamer1.0-tools libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev libgstreamer-plugins-good1.0-dev \
    gstreamer1.0-plugins-good \
    ros-humble-gscam \
    ros-humble-image-transport \
    ros-humble-compressed-image-transport \
    v4l-utils \
    && rm -rf /var/lib/apt/lists/*

RUN echo 'alias build="echo \"Nothing to build\""' >> ~/.bashrc
RUN echo 'alias run="ros2 launch gscam pipeline.launch.xml"' >> ~/.bashrc
