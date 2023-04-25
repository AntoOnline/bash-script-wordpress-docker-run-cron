#!/bin/bash

echo "Getting the container names of running WordPress instances..."

# Get the container names of running WordPress instances
container_names=$(/usr/bin/docker ps -aqf "ancestor=wordpress" --format "{{.Names}}")

echo "Found the following WordPress instances:"
echo "$container_names"

for container_name in $container_names; do

    echo "Run cron for: $container_name"

    # Change directory to the WordPress root directory inside the container
    /usr/bin/docker exec --user www-data $container_name php /var/www/html/wp-cron.php
done

echo "All WordPress instances have run cron."
