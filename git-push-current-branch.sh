#!/bin/bash

  read -p "Push to this branch in github?  "$(git branch | awk '/^\* / { print $2 }') -n 1 -r
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]
  then
      echo "okay, here goes nothing!"
      git push origin $(git branch | awk '/^\* / { print $2 }')
      exit 1
  fi
  echo "okay fine then! try again later!"
