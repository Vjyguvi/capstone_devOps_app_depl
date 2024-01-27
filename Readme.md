# Capstone Project
+ Name : Vijay.B
+ Batch : DO8WD-E
# Containerizing applications
+ Using a Dockerfile, the application was built on a Node.js base image, and the artifacts were then copied to an Nginx image for web access.
+ A Docker-compose file has been created to manage and run the built application.
# Scripting
+ Bash script was created to automate the build and run processes using Dockerfile and Docker-compose files.
# Version Control
+ Branch named 'dev' was created in Github repository using Git.
  ```bash
  git branch dev
 > ![Screenshot dev branch](https://github.com/Vjyguvi/capstone_devOps_app_depl/assets/150816386/084f5c96-9307-481c-932b-e47974fe21ad) 
+ The application code has been pushed to the 'dev' branch.
> ![Screenshot push code](https://github.com/Vjyguvi/capstone_devOps_app_depl/assets/150816386/daecece1-01d6-48ca-806b-6a2ce5439f27)
+ A .gitignore file has been created to avoid pushing unnecessary files.
+ A .dockerignore file has been created to avoid pushing unnecessary files while dockerizing.
# Docker Hub
+ Repository named 'dev' and 'prod' was created in docker hub with public and private access, respectively.
> ![Screenshot docker repo](https://github.com/Vjyguvi/capstone_devOps_app_depl/assets/150816386/f805d30d-6ba3-43a8-b4dc-b06fb6b249d4)
+ Docker Hub with image
> ![Screenshot docker hub](https://github.com/Vjyguvi/capstone_devOps_app_depl/assets/150816386/10773b62-dec5-47cf-82f5-59c2700dace0)
> ![Screenshot dockerhub2](https://github.com/Vjyguvi/capstone_devOps_app_depl/assets/150816386/c3952f07-4c64-4735-bf81-4148a1142159)
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
  + ![Screenshot jenkins login](https://github.com/Vjyguvi/capstone_devOps_app_depl/assets/150816386/348effbe-ad56-4df8-a4b1-162f659a3b60)
  > Create a Multibranch pipeline:
  + ![Screenshot multibranch project](https://github.com/Vjyguvi/capstone_devOps_app_depl/assets/150816386/8933fbee-9fea-4381-b571-833383ce1be3)
  > Auto Build Trigger:
  >> Note MultiBranch Action Triggers Plugin is required.
  + ![Screenshot webhook setting 1](https://github.com/Vjyguvi/capstone_devOps_app_depl/assets/150816386/a8e94e68-d7d0-4226-b1c5-e07eb6561bc2)
  + ![Screenshot webconfig in github](https://github.com/Vjyguvi/capstone_devOps_app_depl/assets/150816386/eadb3d36-ce1c-456c-92bf-af03c9b096c5)

  > Jenkins Pipeline
  + Using a Jenkinsfile, stages were created for building, pushing, and deploying on an EC2 node.
  + ![Screenshot pipeline](https://github.com/Vjyguvi/capstone_devOps_app_depl/assets/150816386/47040ac9-c239-43b5-9ac1-51beff90d05c)
# EC2 Instance
 > EC2 console
 + ![Screenshot ec2](https://github.com/Vjyguvi/capstone_devOps_app_depl/assets/150816386/7839fd10-55b6-411e-96d0-e601c2224c2d)
 > Security group
 + ![Screenshot SG inbond](https://github.com/Vjyguvi/capstone_devOps_app_depl/assets/150816386/54474da8-2ab6-463a-b839-d37a5806c868)
 > Adding an EC2 instance as a node in Jenkins.
 + ![Screenshot node added](https://github.com/Vjyguvi/capstone_devOps_app_depl/assets/150816386/bbc5e980-d8dc-4af6-9838-ecc8638d8187)
# Monitoring:
> ![Screenshot grafana](https://github.com/Vjyguvi/capstone_devOps_app_depl/assets/150816386/cf418c59-110d-4a54-be19-8b8615ecc6a0)
> Email Notification Configured
> ![Screenshot grafana email notification](https://github.com/Vjyguvi/capstone_devOps_app_depl/assets/150816386/a11bced3-5b03-4ded-9bfc-d8fb2cc682bb)
# Deployed site page
> ![Screenshot output](https://github.com/Vjyguvi/capstone_devOps_app_depl/assets/150816386/caaa79b1-155e-4af3-8dfa-c7c1a51e779b)
