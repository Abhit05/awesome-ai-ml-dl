#!/bin/bash

set -e
set -u
set -o pipefail

source common.sh

cd shared
gitClone https://github.com/pemistahl/lingua
cd ..