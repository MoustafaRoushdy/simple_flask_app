pipeline {
    agent any
    
    stages {
        stage('Build') {
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
        
        stage("Deploy"){
            steps {
                sh "docker run -d --name flaskcontainer -p 5555:5000 moustafaroushdy/flaskapp:0.0.1"
            }
        }
    }
}
