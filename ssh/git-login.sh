eval $(ssh-agent -s)
ssh-add /Users/ajmal.basheer/.ssh/id_rsa
ssh -T git@github.com
