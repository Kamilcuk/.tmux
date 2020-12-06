#!/bin/bash
set -xeuo pipefail

git remote set-url origin git@github.com:Kamilcuk/.tmux
git remote add origin2 https://github.com/gpakosz/.tmux ||:
git fetch --all
git rebase origin2/master
git remote remove origin2

