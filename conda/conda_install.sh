#!/usr/bin/env bash

set -ev # exit on first error, print each command

if [ ${PYTHON_ARCH} == "32" ]; then
  set CONDA_FORCE_32BIT=1
fi
conda create -q -n testenv ${DEPS} python=${PYTHON_VERSION}
source activate testenv
conda info -a
conda list
conda create -q -n helics-build-environment python=$TRAVIS_PYTHON_VERSION

