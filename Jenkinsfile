pipeline{
    agent any
    environment{
        repo = "https://github.com/Sass0nX/requests.git"
    }
    stages{
        stage('clone/pull'){
            steps{
                sh '''
                git clone $repo
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
                python3 RestTest.py
                '''
            }
        }
    }   

}