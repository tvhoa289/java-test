node {

    stage('Checkout') {
        steps {
            checkout([
                $class: 'GitSCM',
                branches: [
                    [
                        name: 'master'
                    ]
                ],
                doGenerateSubmoduleConfigurations: false,
                extensions: [

                ],
                submoduleCfg: [

                ],
                userRemoteConfigs: [
                    [
                        url: 'https://github.com/tvhoa289/java-test.git'
                    ]
                ]
            ])
        }
    }
    stage("Assume Role"){
        when { 
            expression {
                return params.Create_service;
            }
        }          
        steps {
            //Assume roles
            sh "echo 'hello assume role'"
            sh 'cat ~/.aws/credentials'
            sh 'pwd'
        }
    }
    stage('Create service.') {
        when { 
            expression {
                return params.Create_service;
            }
        }        
        steps {
            sh "pwd"
            sh "hello create service"
            
        }
    }
}