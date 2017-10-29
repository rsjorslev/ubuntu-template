# Packer - Ubuntu 16.04 template creation for vSphere 6.x

This is a sample on how to use Packer 1.0.0 to build Ubuntu 16.04-amd64 VMs for use as templates in a VMware vSphere environments.

There are 2 builders of type `vmware-iso` where the one called `vsphere-dvs` is for use with a Distributed Virtual Switch (DVS) and the builder called `vsphere` can be used for regular vSwitches.

Please change all variables accordingly before running either builder.
For the `vsphere-dvs` the easiest way to find the `dvportgroupid` and `switchid` is to edit a VMX file of a VM already associated with the dv-portgroup Packer is supposed to target.
