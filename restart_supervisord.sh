#!/bin/sh

supervisord_conf=/home/moneyfactor/.jenkins/jobs/moneyfactor/workspace/supervisord.conf

# Stop web service instances
supervisorctl -c $supervisord_conf stop all

# Stop supervisord
# /etc/init.d/supervisord restart

# Start the web service instances
supervisorctl -c $supervisord_conf start all
