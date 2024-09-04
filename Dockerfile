# Use an official Debian-based image as the base image
FROM ubuntu:24.04

# Update package list and install necessary tools
#RUN apt-get update && apt-get install -y \
#    build-essential \  # Installs GCC, G++, and other development tools
#    # Installs OpenJDK 22 (to add)
#    curl \             # Useful for downloading files
#    vim \              # A text editor for convenience
#    && rm -rf /var/lib/apt/lists/*  # Clean up


# Installing build tools
RUN apt-get update && apt-get install -y build-essential

# Installing wget -> necessary for downloading JDK 22 RPM file
RUN apt-get install -y wget && apt-get install -y alien

# Downloading and installing the JDK
RUN wget https://download.oracle.com/java/22/latest/jdk-22_linux-aarch64_bin.rpm
RUN alien -i jdk-22_linux-aarch64_bin.rpm

# Setting environment variables
ENV JAVA_HOME="/usr/lib/jvm/jdk-22.0.2-oracle-aarch64"
ENV PATH="$PATH:${JAVA_HOME}/bin"

# Installing CMAKE
RUN apt-get -y install cmake

#NOTE: Gradle gets installed with an JDK above 8 (this has 22)

# Set the working directory inside the container
WORKDIR /app

# This would be the default command if someone runs the container without specifying a command
CMD ["/bin/bash"]
