pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        checkout([
          $class: 'GitSCM',
          branches: [[name: env.GIT_BUILD_REF]],
          userRemoteConfigs: [[
            url: env.GIT_REPO_URL,
            credentialsId: env.CREDENTIALS_ID
          ]]])
        }
      }

      stage('Build') {
        steps {
          sh '''pip install mkdocs mkdocs-material mkdocs-glightbox
mkdocs build'''
          sh 'tar zcvf site.tar.gz site'
          archiveArtifacts(artifacts: 'site.tar.gz', allowEmptyArchive: false, onlyIfSuccessful: true)
        }
      }

      stage('Deploy') {
        steps {
          useCustomStepPlugin(key: 'SYSTEM:ssh_command', version: 'latest', params: [port:'22',username:'${CODING_CRED_USERNAME}',ssh_type:'sftp_upload',ipaddr:'${WEB_SITE_IP}',password:'${CODING_CRED_PASSWORD}',localpath:'/root/workspace/site.tar.gz',remotepath:'/home/coding/workspace/wiki/site.tar.gz',sshcommands:''])
          useCustomStepPlugin(key: 'SYSTEM:ssh_cmd', version: 'latest', params: [port:'22',username:'${CODING_CRED_USERNAME}',parameter:'~/workspace/wiki/publish.sh ${WEB_SITE_PATH}',ip:'${WEB_SITE_IP}',cmd:'sshCommand',password:'${CODING_CRED_PASSWORD}'])
        }
      }

    }
  }