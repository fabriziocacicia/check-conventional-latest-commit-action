#!/bin/sh -l

npx commitlint --from HEAD~1 --to HEAD --verbose
