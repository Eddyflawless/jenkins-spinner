Jenkins initial setup is required. An admin user has been created and a password generated.
Please use the following password to proceed to installation:

c0ff6461db6048e8a7e02a34b80451f4

This may also be found at: /var/jenkins_home/secrets/initialAdminPassword

# start docker instance in detached mode
docker-compose -f compose.yml up -d 

ssh-keygen -t rsa
# copy generated pub into online server on a new line of
# ~/.ssh/authorized_keys

vim ~/.ssh/authorized_keys

# change / adjust right permissions
chmod 700 ~/.ssh
chmod 600 ~/.ssh/*

# generate ssh keys on ec2 instance
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
eg: ssh-keygen -t rsa -b 4096 -C "l0rds.work@gmail.com"