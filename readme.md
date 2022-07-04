Jenkins initial setup is required. An admin user has been created and a password generated.
Please use the following password to proceed to installation:

## Default authentication (password might differ when you set it up)
Username: admin
Password: ed8b009567894cd28d0caf3d1546a782

This may also be found at: /var/jenkins_home/secrets/initialAdminPassword

## To get the password execute the command below
`docker exec [container-id] cat /var/jenkins_home/secrets/initialAdminPassword`

# start docker instance in detached mode
`docker-compose -f compose.yaml up -d` 

ssh-keygen -t rsa
# copy generated pub into online server on a new line of
# ~/.ssh/authorized_keys

`vim ~/.ssh/authorized_keys`

# change / adjust right permissions
`chmod 700 ~/.ssh`
`chmod 600 ~/.ssh/*`

# generate ssh keys on ec2 instance
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
eg: `ssh-keygen -t rsa -b 4096 -C "l0rds.work@gmail.com"`