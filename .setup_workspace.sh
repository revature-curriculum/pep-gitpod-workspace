#!/bin/bash

cd /workspace/pep-gitpod-workspace
git pull -X theirs

if [[ ! -d "/workspace/revpro-cli" ]] ;
then
echo "/workspace/revpro-cli does not exist. Cloning..."
git clone https://github.com/revature-curriculum/revpro-cli /workspace/revpro-cli
echo "Repo cloned to /workspace/revpro-cli"
fi

cd /workspace/revpro-cli
git checkout cli-test

git pull -X theirs

bundle install
rake install
echo "Installed all dependencies."

echo "source /workspace/pep-gitpod-workspace/revpro-autocomplete.sh;" >> ~/.bashrc

export REVPRO_CLI_REPORT_HOST=https://staging.res.revatu.re

if [[ -d "/workspace/revpro-cli/pep-labs" ]] ;
then
cd /workspace/revpro-cli/pep-labs
echo "Changed to /workspace/revpro-cli/pep-labs directory"
else
cd /workspace/revpro-cli
echo "Changed to /workspace/revpro-cli directory"
fi

echo "Your workspace is ready. Happy coding!"
