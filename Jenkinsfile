@Library('java-shared-library') _

pipeline{
    agent any
    stages{
        stage("Git Checkout"){
            steps{
                checkout(
                    branch: 'main',
                    url: 'https://github.com/vinodpal161191/java-springboot-jenkins-shared-lib.git'
                )
            }  
        }
    }
}