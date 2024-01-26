pipeline {
    agent {
                node ('node') {
                    
                    label 'node'
                }
    }
     stages {
        stage('CheckoutGit') {
            steps {
                script {
                         checkout scmGit(branches: [[name: '*/dev'], [name: '*/prod']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Vjy05git/testtttttt.git']])
                    }
                }
            }

        stage('Docker Hub Login') {
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId: 'dockerhub', passwordVariable: 'dpass', usernameVariable: 'duser')]) {
                        sh 'docker login -u $duser -p $dpass'
                    }
                }
            }
        }
        stage('Build') {
            steps {
                script {
                    def branchName = env.BRANCH_NAME
                    if (branchName == 'prod') {
                        sh "chmod +x build.sh"
                        sh 'sudo ./build.sh'
                       } else if (branchName == 'dev') {
                        sh "chmod +x build.sh"
                        sh 'sudo ./build.sh'
                        }
                  else {
                        echo 'failed'
                    }
                }
            }
        }
stage('Push Image') {
            steps {
                script {
                    def branchName = env.BRANCH_NAME
                    if (branchName == 'prod') {
                        sh 'docker tag proj vjyguvi/prod:papp'
                        sh 'docker push vjyguvi/prod:papp'
                    } else if (branchName == 'dev') {
                        sh 'docker tag proj vjyguvi/dev:dapp'
                        sh 'docker push vjyguvi/dev:dapp'
                    } else {
                        echo 'Not pushed'
                    }
                }
            }
        }
stage('deploy') {
            steps {
                script {
                      sh 'docker rm -f app'   
                      sh 'sudo ./deploy.sh'
                    }
                }
            }    
}
}
