#!/bin/bash

if [[ ! -f "/workspace/.revpro-cli-setup" ]] ;
then
echo "/workspace/.revpro-cli-setup does not exist"

git clone https://github.com/revature-curriculum/revpro-cli /workspace/revpro-cli
echo "Repo cloned to /workspace/revpro-cli"

cd /workspace/revpro-cli
echo "Changed to /workspace/revpro-cli directory"

touch /workspace/.revpro-cli-setup
bundle install
rake install
echo "Installed all dependencies."

else
# This will be printed if condition if False
echo "/workspace/.revpro-cli-setup exists"
fi

if [[ ! -f "/workspace/.pep-labs-started" ]] ;
then
echo "/workspace/.pep-labs-started does not exist"
touch /workspace/.pep-labs-started
else
echo "/workspace/.pep-labs-started exists"
fi
