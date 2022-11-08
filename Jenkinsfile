pipeline{
    agent any
    environment{
        repo = "https://github.com/Sass0nX/requests.git"
    }
    stages{
        stage('clone/pull'){
            steps{
                sh '''
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Sass0nX/requests.git']]])
                '''
            }
        }
        stage('Build'){
            steps{
                sh '''
                python3 http_e.py
                '''
            }
        }
        stage('Testing'){
            steps{
                sh '''
                python3 TestRest.py
                '''
            }
        }
    }   

    post{
        always{
            echo "d"
            
        }
        success{
            echo "Success u son of a bitch"
        }
        failure{
            echo "Failure u son of a bitch"
        }
    }

}