#!/bin/bash

if [[ ! -d "/workspace/revpro-cli" ]] ;
then
echo "/workspace/revpro-cli does not exist. Cloning..."
git clone https://github.com/revature-curriculum/revpro-cli /workspace/revpro-cli
echo "Repo cloned to /workspace/revpro-cli"
fi

cd /workspace/revpro-cli

git pull

bundle install
rake install
echo "Installed all dependencies."

export REVPRO_CLI_REPORT_HOST=https://res.revatu.re

if [[ -d "/workspace/revpro-cli/pep-labs" ]] ;
then
cd /workspace/revpro-cli/pep-labs
echo "Changed to /workspace/revpro-cli/pep-labs directory"
else
cd /workspace/revpro-cli
echo "Changed to /workspace/revpro-cli directory"
fi

echo "Your workspace is ready. Happy coding!"
echo "HI"
