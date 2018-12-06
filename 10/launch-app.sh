#!/bin/bash

echo "Using default /launch-app.sh.."

if [ -f "$HOME/app.jar" ]; then
    java $JAVA_OPTIONS -Djava.security.egd=file:/dev/./urandom -Djava.security.properties=${HOME}/java.security.properties -jar $HOME/app.jar "$@"
elif [ -f "$HOME/app.war" ]; then
    java $JAVA_OPTIONS -Djava.security.egd=file:/dev/./urandom -Djava.security.properties=${HOME}/java.security.properties -jar $HOME/app.war "$@"
else
    echo "No $HOME/app.jar and no $HOME/app.war found. Exiting."
    exit 1
fi