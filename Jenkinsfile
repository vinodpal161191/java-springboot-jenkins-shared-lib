@Library('java-shared-library') _

pipeline{
    agent any

    parameters{
        choice(name: 'action', choices: 'create\ndestroy', description: 'Choose Create/Destroy')
    }

    stages{
        stage("Git Checkout"){
            when{ expression {params.action == 'create'} }
            steps{
                gitCheckout(
                    branch: 'main',
                    url: 'https://github.com/vinodpal161191/java-springboot-jenkins-shared-lib.git'
                )
            }  
        }

        stage("mvn: Unit Test"){
            when{ expression {params.action == 'create'} }
            steps{
                mvnUnitTest()
            }  
        }  

        stage("mvn: Integration Test"){
            when{ expression {params.action == 'create'} }
            steps{
                mvnIntegrationTest()
            }  
        }

        stage("sonar: Code analysis Test"){
            when{ expression {params.action == 'create'} }
            steps{
                script{
                    def sonarCredentialsId = 'sonarqube-secret'
                    codeAnalysisSonar(sonarCredentialsId)
                }
            }  
        }

        stage("sonar: Quality Gate Test"){
            when{ expression {params.action == 'create'} }
            steps{
                script{
                    def sonarCredentialsId = 'sonarqube-secret'
                    qualityGateSonar(sonarCredentialsId)
                }
            }  
        }

        stage("mvn: Build"){
            when{ expression {params.action == 'create'} }
            steps{
                script{
                    mvnBuild()
                }
            }  
        }

        
    }
}