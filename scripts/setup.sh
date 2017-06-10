#!/bin/bash -eux

# Add def-user user to sudoers.
echo "def-user        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers
sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers
