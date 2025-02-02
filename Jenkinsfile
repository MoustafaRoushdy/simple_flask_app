pipeline {
    agent none
    
    stages {
        stage('Build') {
            agent {
                label 'controller'
            }
            steps {
                script {
                        docker.withRegistry('https://index.docker.io/v1/', 'dockerhub_credentials') {
                        def customImage = docker.build("moustafaroushdy/flaskapp:0.0.1")
                        customImage.push()
                     }
                }
            }
        }
        
        stage("Test"){
            agent {
                docker {
                    image 'ubuntu:latest'
                }
            }
            steps {
                echo "Testing.."
            }
        }
        stage("Test node"){
            agent {
                label 'node1'
            }
            steps{
                sh "echo Hello"
            }
            
        }
        
        stage("Deploy"){
            agent {
                label 'built-in Node'
            }
            input {
                message "Do you really want to run the container?"
            }
            steps {
                sh "docker run -d --name flaskcontainer -p 5555:5000 moustafaroushdy/flaskapp:0.0.1"
            }
        }
    }
}
