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
    PACKER = tool('packer_v102')
    ESXI_CREDS = credentials('esx-tstdmn')
    ESXI_HOST = 'esx06.tstdmn.dk'
    DVPORTGROUP_ID = 'vportgroup-67'
    SWITCH_ID = '50 18 a9 9e 92 d0 de cd-1a 88 ce bc 53 3c 03 d1'
    DATASTORE = 'vsphere01'
    PACKER_LOG = '1'
  }
}