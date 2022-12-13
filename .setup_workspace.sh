#!/bin/bash

if [[ ! -d "/workspace/revpro-cli" ]] ;
then
echo "/workspace/revpro-cli does not exist. Cloning..."
git clone https://github.com/revature-curriculum/revpro-cli /workspace/revpro-cli
echo "Repo cloned to /workspace/revpro-cli"
fi

cd /workspace/revpro-cli
echo "Changed to /workspace/revpro-cli directory"

bundle install
rake install
echo "Installed all dependencies."
echo "Your workspace is ready. Happy coding!"
