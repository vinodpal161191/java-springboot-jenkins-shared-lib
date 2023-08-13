@Library('java-shared-library') _

pipeline{
    agent any

    parameters{
        choice(name: 'action', choices: 'create\ndestroy', description: 'Choose Create/Destroy')
        string(name: 'registryUser', description: 'Enter Image Registry User', defaultValue: 'iamvinodpal')
        string(name: 'appName', description: 'Enter appName', defaultValue: 'javaapp')
        string(name: 'tagName', description: 'Enter Image Tag Name', defaultValue: 'v1')
    }

    stages{
        // stage("Git Checkout"){
        //     when{ expression {params.action == 'create'} }
        //     steps{
        //         gitCheckout(
        //             branch: 'main',
        //             url: 'https://github.com/vinodpal161191/java-springboot-jenkins-shared-lib.git'
        //         )
        //     }  
        // }

        // stage("mvn: Unit Test"){
        //     when{ expression {params.action == 'create'} }
        //     steps{
        //         mvnUnitTest()
        //     }  
        // }  

        // stage("mvn: Integration Test"){
        //     when{ expression {params.action == 'create'} }
        //     steps{
        //         mvnIntegrationTest()
        //     }  
        // }

        // stage("sonar: Code analysis Test"){
        //     when{ expression {params.action == 'create'} }
        //     steps{
        //         script{
        //             def sonarCredentialsId = 'sonarqube-secret'
        //             codeAnalysisSonar(sonarCredentialsId)
        //         }
        //     }  
        // }

        // stage("sonar: Quality Gate Test"){
        //     when{ expression {params.action == 'create'} }
        //     steps{
        //         script{
        //             def sonarCredentialsId = 'sonarqube-secret'
        //             qualityGateSonar(sonarCredentialsId)
        //         }
        //     }  
        // }

        // stage("mvn: Build"){
        //     when{ expression {params.action == 'create'} }
        //     steps{
        //         script{
        //             mvnBuild()
        //         }
        //     }  
        // }

        // stage("docker: Image Build"){
        //     when{ expression {params.action == 'create'} }
        //     steps{
        //         script{
        //             def registryUser = "${params.registryUser}"
        //             def appName = "${params.appName}"
        //             def tagName = "${params.tagName}"
        //             dockerImageBuild(registryUser, appName, tagName)
        //         }
        //     }  
        // }

        // stage("trivy: Scan Image"){
        //     when{ expression {params.action == 'create'} }
        //     steps{
        //         script{
        //             def registryUser = "${params.registryUser}"
        //             def appName = "${params.appName}"
        //             def tagName = "${params.tagName}"
        //             trivyScanImage(registryUser, appName, tagName)
        //         }
        //     }  
        // }

        stage("docker: Push Image"){
            when{ expression {params.action == 'create'} }
            steps{
                script{
                    def registryUser = "${params.registryUser}"
                    def appName = "${params.appName}"
                    def tagName = "${params.tagName}"
                    dockerImagePush(registryUser, appName, tagName)
                }
            }  
        }

        
    }
}