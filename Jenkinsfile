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
            steps {
                echo "Testing.."
            }
        }
        
        stage("Deploy"){
            steps {
                echo "Deploying.."
            }
        }
    }
}
