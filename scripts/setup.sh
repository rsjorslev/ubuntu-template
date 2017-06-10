#!/bin/bash -eux

# Add runner user to sudoers.
echo "runner        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers
sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers
