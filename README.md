# Docker monitor script

A script to monitor docker containers. The script uses the mail command:

<https://www.binarytides.com/linux-mail-command-examples/>

The intended use for this command is to be used as a cron job with the names of the containers passed as command like arguments. In case the docker container is not up, the script will send an email to the address specified in the script.
