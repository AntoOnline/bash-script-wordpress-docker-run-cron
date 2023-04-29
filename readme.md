# WordPress Cron Runner

This script is designed to run the WordPress cron (`wp-cron.php`) for all running Docker containers with a WordPress instance.

## Requirements

- Docker
- Bash

## Usage

1. Make sure the `wordpress-docker-run-cron.sh` script is executable:

```
chmod +x wordpress-docker-run-cron.sh
```

2. Run the script:

```
./wordpress-docker-run-cron.sh
```

The script will identify all running Docker containers with a WordPress instance, and then execute the `wp-cron.php` file for each of them.

## How it works

The script performs the following steps:

1. Retrieves the container names of all running WordPress instances.
2. Iterates through the container names and runs the `wp-cron.php` file for each instance.

The script will output the container names of the running WordPress instances and display a message indicating that the cron has been run for each instance. After completing the process for all instances, the script will display a message indicating that all WordPress instances have run the cron.

## License

This project is licensed under the MIT License.

## Want to connect?

Feel free to contact me on [Twitter](https://twitter.com/OnlineAnto) or [LinkedIn](https://www.linkedin.com/in/anto-online) if you have any questions or suggestions.

Or just visit my [website](https://anto.online) to see what I do.
