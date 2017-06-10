pipeline {
  agent any
  stages {
    stage('Pre-Start') {
      steps {
        sh 'printenv'
        sh '${PACKER}/packer -v'
      }
    }
    stage('Validate') {
      steps {
        sh '${PACKER}/packer validate ubuntu-16.04-amd64.json'
      }
    }
    stage('Build') {
      steps {
        sh '${PACKER}/packer build ubuntu-16.04-amd64.json'
      }
    }
  }
  environment {
    PACKER = tool('packer100')
    ESXI_CREDS = credentials('esx01.tstdmn.nu')
    ESXI_HOST = 'esx01.tstdmn.nu'
  }
}
