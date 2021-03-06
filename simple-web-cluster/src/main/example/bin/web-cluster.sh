#!/bin/bash
#
# Web Cluster Example
#
#set -x # debug

# Set example directory
DIR=$(cd $(dirname $0)/.. && pwd)

# Setup Brooklyn environment
BROOKLYN_CLASSPATH="${DIR}/resources:${DIR}/lib/*"
BROOKLYN_OPTS="-Xms512m -Xmx512m"
export BROOKLYN_CLASSPATH BROOKLYN_OPTS

# Launch Brooklyn with application
brooklyn -v launch --app brooklyn.demo.WebClusterExample --location ${@:-localhost}
