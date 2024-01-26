# Containerizing applications
+ Using a Dockerfile, the application was built on a Node.js base image, and the artifacts were then copied to an Nginx image for web access.
+ A Docker-compose file has been created to manage and run the built application.
# Scripting
+ Bash script was created to automate the build and run processes using Dockerfile and Docker-compose files.
# Version Control
+ Branch named 'dev' was created in Github repository using Git.
+ The application code has been pushed to the 'dev' branch.
+ A .gitignore file has been created to avoid pushing unnecessary files.
+ A .dockerignore file has been created to avoid pushing unnecessary files while dockerizing.
# Docker Hub
+ Repository named 'dev' and 'prod' was created in docker hub with public and private access, respectively.
> screen
+ Docker Hub with image
> Screen
# Pipeline using jenkins
+ Installation of jenkins.
  > Prerequisites:
  + Jenkins requires Java to run.
    ```bash
    sudo apt install openjdk-21-jdk
  > Install Jenkins:
  + Execute the following commands in the terminal to install Jenkins.
    ```bash
    sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
    https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
    echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
    https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
    /etc/apt/sources.list.d/jenkins.list > /dev/null
    sudo apt-get update
    sudo apt-get install jenkins
  > Start Jenkins:
  + Execute the following command in the terminal to start Jenkins.
    ```bash
    sudo systemctl start jenkins
  > Access Jenkins:
  + Once Jenkins is started, open a web browser and navigate to http://localhost:8080 (replace localhost with the IP address or hostname of the server)
  >> Note port 8080 should be allowed in security group for jenkins system.
  > Login Page:
  + scree
  > Create a Multibranch pipeline:
  + scree
  > Auto Build Trigger:
  >> Note MultiBranch Action Triggers Plugin is required.
  + scree
  > Jenkins Pipeline
  + Using a Jenkinsfile, stages were created for building, pushing, and deploying on an EC2 node.
  + nscre
# EC2 Instance
 > EC2 console
 + screen
 > Security group
 + screen
 > Adding an EC2 instance as a node in Jenkins.
 +
# Monitoring:
> screen
# Deployed site page
> Screen
