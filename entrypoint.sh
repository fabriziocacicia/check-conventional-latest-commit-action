#!/bin/sh -l

# Workoround for Error: fatal: detected dubious ownership in repository at '/github/workspace'
git config --global --add safe.directory /github/workspace
#

npx commitlint --from HEAD~1 --to HEAD --verbose
