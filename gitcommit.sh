#!/bin/bash

# Navigate to the directory of the script
cd "$(dirname "$0")"

# Run the Node.js scripts
node "$(pwd)/compiler/generateDocsFromAnnotations.js"
node "$(pwd)/compiler/generateReadMe.js"

# Add changes to Git, commit, and push
git add .
git commit -m "Auto Commit"
git push

# Run the compile script
node "$(pwd)/compiler/compile.js"
