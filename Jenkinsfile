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
        sh '${PACKER}/packer build -only=vsphere ubuntu-16.04-amd64.json'
      }
    }
  }
  environment {
    PACKER = tool('packer_v113')
    ESXI_CREDS = credentials('esx01.tstdmn.dk')
    ESXI_HOST = 'esx01.tstdmn.dk'
    DVPORTGROUP_ID = 'dvportgroup-335'
    SWITCH_ID = '7c 46 2f 50 52 21 6e cd-26 39 8b e7 dd 52 a0 25'
    DATASTORE = 'esx01-ssd04'
    PACKER_LOG = '1'
    REL_VERSION = "${GIT_COMMIT.substring(0,7)}"
  }
}
