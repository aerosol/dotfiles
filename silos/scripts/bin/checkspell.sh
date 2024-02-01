#!/usr/bin/env bash
codespell $(git diff --name-only $(git rev-parse --abbrev-ref HEAD) $(git merge-base $(git rev-parse --abbrev-ref HEAD) ${1:-master}))
