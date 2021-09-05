node{
    
            def B_Num = BUILD_NUMBER
    
            stage('Git_checkout')
            {
                 checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/pratapooo3/maven-web-application1.git']]])
             }
    
    
           stage('Maven_Build')
             {
                sh"mvn clean package"
                
             }
    
    
            stage('build_dockerimage')
            {
                sh "docker build -t veeer/myimage:${B_Num} ."
            }
                               
    
            stage("login to Registry") 
            {
                sh"docker logout"
                    withCredentials([string(credentialsId: 'docker_hubpwd', variable: 'password')]) 
                        {
                            sh "docker login -u veeer -p ${Password}"
                        }  
            } 
    
    
           stage('Image push to Registry ')
           {
                sh"docker images"
                sh "docker push veeer/myimage:${B_Num}"
            }                            
           // for over come system storage issue.we delete the image and it is stored at registry 
            stage("image delete")  
            {
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
