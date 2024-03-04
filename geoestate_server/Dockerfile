# # If you update the dart version, make sure the image is
# # compatible with the busybox image.
# FROM dart:3.2.5 AS build

# WORKDIR /app
# COPY . .

# RUN dart pub get
# RUN dart compile exe bin/main.dart -o bin/main

# # If you update the busybox version, make sure the image is
# # compatible with the dart image.
# FROM busybox:1.36.1-glibc

# ENV runmode=development
# ENV serverid=default
# ENV logging=normal
# ENV role=monolith

# COPY --from=build /runtime/ /
# COPY --from=build /app/bin/main /app/bin/main
# COPY --from=build /app/config/ config/
# COPY --from=build /app/web/ web/

# EXPOSE 8080
# EXPOSE 8081
# EXPOSE 8082

# CMD app/bin/main --mode $runmode --server-id $serverid --logging $logging --role $role

# FROM dart:2.19.0 AS build

# # Resolve app dependencies.
# WORKDIR /app
# COPY pubspec.* ./
# COPY lib /app
# COPY config /app
# COPY bin /app

# RUN dart pub get

# # Copy app source code and AOT compile it.
# COPY . .
# # Ensure packages are still up-to-date if anything has changed
# RUN dart pub get --offline

# # Start server.
# EXPOSE 8080
# EXPOSE 8081
# EXPOSE 8082
# #CMD ["/app/bin/server"]
# CMD /bin/bash -c "dart bin/main.dart --mode production"


# Use the Dart image as the build stage
# FROM dart:2.19.0 AS build

# # Resolve app dependencies.
# WORKDIR /app
# COPY . .

# RUN dart pub get

# # Copy app source code and AOT compile it.
# RUN dart compile exe bin/main.dart -o bin/main

# # If you update the busybox version, make sure the image is
# # compatible with the dart image.
# FROM busybox:1.36.1-glibc

# ENV runmode=development
# ENV serverid=default
# ENV logging=normal
# ENV role=monolith

# WORKDIR /app

# COPY --from=build /app/bin/main /app/bin/main
# COPY --from=build /app/config/ config/
# COPY --from=build /app/web/ web/

# EXPOSE 8080
# EXPOSE 8081
# EXPOSE 8082

# CMD /bin/bash -c "app/bin/main --mode $runmode --server-id $serverid --logging $logging --role $role"

# FROM dart:2.19.0 AS build

# # Resolve app dependencies.
# WORKDIR /app
# COPY pubspec.* ./
# COPY lib /app
# COPY config /app
# COPY bin /app

# RUN dart pub get

# # Copy app source code and AOT compile it.
# COPY . .
# # Ensure packages are still up-to-date if anything has changed
# RUN dart pub get --offline

# # Start server.
# EXPOSE 8080
# EXPOSE 8081
# EXPOSE 8082
# #CMD ["/app/bin/server"]
# CMD /bin/bash -c "dart bin/main.dart --mode production"


# Use the Dart image as the build stage
FROM dart:3.2.5 AS build

# Resolve app dependencies.
WORKDIR /app
COPY . .

RUN dart pub get

# Copy app source code and AOT compile it.
COPY . .
# Ensure packages are still up-to-date if anything has changed
RUN dart pub get --offline

# Compile the Dart code into an executable binary
RUN dart compile exe bin/main.dart -o bin/main

# Use a minimal Busybox image as the final base image
FROM busybox:1.36.1-glibc

# Set environment variables
ENV runmode=development
ENV serverid=default
ENV logging=normal
ENV role=monolith

# Set the working directory in the final image
WORKDIR /app

# Copy the compiled Dart binary and other necessary files from the build stage to the final image
COPY --from=build /app/bin/main /app/bin/main
COPY --from=build /app/config/ config/
COPY --from=build /app/web/ web/

# Expose the necessary ports
EXPOSE 8080
EXPOSE 8081
EXPOSE 8082

# Define the command to run the application
CMD /bin/bash -c "app/bin/main --mode $runmode --server-id $serverid --logging $logging --role $role"
