pipeline {
    agent{
        docker { image: 'node:16-alpine'}
    }

    triggers {
        pollSCM '*/5 * * * *' //pull every 5 minutes
    }

    stages {

        stage("Build"){
            steps {
                sh '''
                echo "build some artefacts eg. dockerfile jar etc.."
                '''
            }

        }

        stage("Test"){
            steps {
                sh 'node --version'
            }

        }
    }
    
}