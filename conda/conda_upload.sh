# Only need to change these two variables
PKG_NAME=helics

OS=$TRAVIS_OS_NAME-64
mkdir ~/conda-bld
conda config --set anaconda_upload no
export CONDA_BLD_PATH=~/conda-bld
export VERSION="2.0.0-rc1"
conda build $PKG_NAME
anaconda -t $ANACONDA_TOKEN upload $CONDA_BLD_PATH/$OS/$PKG_NAME-*.tar.bz2 --force
