#!/bin/bash

### Update repositories
sudo apt-get -y update

function essential(){
  ### Update repositories
  sudo apt-get -y update

  ### Install essential packages
  sudo apt-get install -y python-pip python-dev build-essential

  # Check Essential packages install
  if [ $? = 0 ]; then
    echo "Installation Successfully"
  else
    echo "Problems to install Essential packages, check this!"
    exit 1
  fi
}

function numpy() {
  # Install numpy
  sudo pip install numpy

  # Check numpy install
  if [ $? = 0 ]; then
    echo "Installation Successfully"
  else
    echo "Problems to install Numpy, check this!"
    exit 1
  fi
}

function scipy() {
  # Install scipy
  sudo pip install scipy

  # Check scipy install
  if [ $? = 0 ]; then
    echo "Installation Successfully"
  else
    echo "Problems to install Scipy, check this!"
    exit 1
  fi
}

function matplotlib() {
  # Install matplotlib
  sudo pip install matplotlib

  # Check matplotlib install
  if [ $? = 0 ]; then
    echo "Installation Successfully"
  else
    echo "Problems to install Matplotlib, check this!"
    exit 1
  fi
}

function jupyter() {
  # Install jupyter
  sudo pip install jupyter

  # Check jupyter install
  if [ $? = 0 ]; then
    echo "Installation Successfully"
  else
    echo "Problems to install jupyter, check this!"
    exit 1
  fi
}

function pandas() {
  # Install pandas
  sudo pip install pandas

  # Check pandas install
  if [ $? = 0 ]; then
    echo "Installation Successfully"
  else
    echo "Problems to install pandas, check this!"
    exit 1
  fi
}

function seaborn() {
  # Install seaborn
  sudo pip install seaborn

  # Check seaborn install
  if [ $? = 0 ]; then
    echo "Installation Successfully"
  else
    echo "Problems to install seaborn, check this!"
    exit 1
  fi
}

function scikit-learn() {
  # Install scikit-learn
  sudo pip install scikit-learn

  # Check scikit-learn install
  if [ $? = 0 ]; then
    echo "Installation Successfully"
  else
    echo "Problems to install scikit-learn, check this!"
    exit 1
  fi
}

case $1 in

  essential)
    essential
    ;;

  numpy)
    numpy
    ;;

  scipy)
    scipy
    ;;

  matplotlib)
    matplotlib
    ;;

  jupyter)
    jupyter
    ;;

  pandas)
    pandas
    ;;

  seaborn)
    seaborn
    ;;

  scikit-learn)
    scikit-learn
    ;;

  all)
    essential
    numpy
    scipy
    matplotlib
    jupyter
    pandas
    seaborn
    scikit-learn
    ;;

    *)
    echo -e '''
      Usage: MLSetup_python2.sh + Option
      MLSetup_python2.sh all -> this will install all packages
      You can install individually packages using: MLSetup_python2.sh pandas
      or: MLSetup_python2.sh seaborn
    '''
    ;;

esac
