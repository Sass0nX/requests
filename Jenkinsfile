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
                python3 TestRest.py
                '''
            }
        }
    }   

    post{
        always{
            echo "Aborted u son of a bitch"
        }
        success{
            echo "Success u son of a bitch"
        }
        failure{
            echo "Failure u son of a bitch"
        }
    }

}