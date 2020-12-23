pipeline {
    agent any

    stages {
        stage {
            steps {
                sh 'cat ~/.aws/credentials'
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
                withAWS(credentials:'aws_authen', region: 'ap-southeast-1')
                {
                    // do something
                    sh "aws sts assume-role --role-arn arn:aws:iam::810733428226:role/lssp-dev-Role  --role-session-name $BUILD_NUMBER --duration-seconds 900 --region ap-southeast-1 > assume-role.txt"
					//sh 'accessKeyId ="$(grep -oP '(?<="AccessKeyId": ")[^"]*' assume-role.txt)"'
					sh '''#!/bin/bash
                            echo "hello world"
                            AccessKeyId="$(grep -oP '(?<="AccessKeyId": ")[^"]*' assume-role.txt)"
                            SecretAccessKey="$(grep -oP '(?<="SecretAccessKey": ")[^"]*' assume-role.txt)"
                            SessionToken="$(grep -oP '(?<="SessionToken": ")[^"]*' assume-role.txt)"
                            cd ~/.aws
                            rm -rf credentials
                            pwd
                            echo \"[default]\naws_access_key_id = $AccessKeyId\naws_secret_access_key = $SecretAccessKey\naws_session_token = $SessionToken\" > credentials
                            cat ~/.aws/credentials
                        '''
					sh 'cat ~/.aws/credentials'
					sh 'pwd'
                }
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
                sh "chmod 777 service1.yaml"
                sh "echo '${Choice_ServiceName}'"
                script {
                    if("${params.Choice_Cluster}"== 'Lease_Self-Service_Portal-v5'){
                        sh "chmod +x service.sh"
                        sh 'sh service.sh "${Choice_ServiceName}" "${Choice_CPU}" "${Port_Reference}" "${Choice_Memory}" "${Family_reference}" "${Targetgroup_Name}" "${Path_healcheck}" "${Image_Url_reference}"'
                    }else if("${params.Choice_Cluster}"== "Lease_Self-Service_Portal-v5-L2"){
                        sh "chmod +x servicePV.sh"
                        sh 'sh servicePV.sh "${Choice_ServiceName}" "${Choice_CPU}" "${Port_Reference}" "${Choice_Memory}" "${Family_reference}" "${Targetgroup_Name}" "${Path_healcheck}" "${Image_Url_reference}"'
                    }
                }
            }
		}
    }
}