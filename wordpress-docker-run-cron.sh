#!/bin/bash

echo "Getting the container names of running WordPress instances..."

# Get the container names of running WordPress instances
container_names=$(/usr/bin/docker ps -aqf "ancestor=wordpress" --format "{{.Names}}")

echo "Found the following WordPress instances:"
echo "$container_names"

# Run cron for each WordPress instance
run_cron_for_instance() {
    local container_name=$1

    echo "Run cron for: $container_name"

    # Change directory to the WordPress root directory inside the container
    /usr/bin/docker exec --user www-data "$container_name" php /var/www/html/wp-cron.php
}

# Iterate over the container names and run the cron
for container_name in $container_names; do
    run_cron_for_instance "$container_name"
done

echo "All WordPress instances have run cron."
