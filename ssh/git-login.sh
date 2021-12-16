#!/bin/bash -eu

eval $(ssh-agent -s)
ssh-add /Users/<username>/.ssh/id_rsa
ssh -T git@github.com
