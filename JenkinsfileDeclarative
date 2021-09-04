node{
    
            def B_Num = BUILD_NUMBER
    
            stage('Git Clone')
            {
                 checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/pratapooo3/maven-web-application1.git']]])
             }
    
    
            stage('MavenBuild')
            {
                sh '''mvn clean package
                whoami
                pwd
                ls -la
                cd target/
                ls -la'''
             }
    
    
            stage('build Docker image')
            {
                sh "docker build -t myimage:${B_Num} ."
            }
                               
    
            stage("login to  Registry") 
            {
                sh"docker logout"
                    withCredentials([string(credentialsId: 'docker_hubpwd', variable: 'password')]) 
                        {
                            sh "docker login -u veeer -p ${Password}"
                        }  
            } 
    
    
            stage('Docker image push ')
            {
                sh"docker images"
                sh"docker tag myimage:${B_Num} veeer/myimage:${B_Num}"
                sh "docker push veeer/myimage:${B_Num}"
                sh"docker rmi veeer/myimage:${B_Num}"
            }                            
                                
            stage('general information')
            {
                sh '''
                whoami
                pwd
                ls -la
                ip add | grep inet'''
             }
}
