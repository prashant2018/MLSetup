#!/bin/bash

flag=0 #checks for error during installation

sudo apt-get -y update && sudo apt-get update -y upgrade

sudo apt-get -y install python-pip python-dev build-essential || flag=1
sudo pip install --upgrade pip || flag=1

#Numpy
sudo apt-get -y install python-numpy || flag=1

#Scipy
sudo apt-get -y install python-scipy || flag=1

#Matplotlib
sudo apt-get -y install python-matplotlib || flag=1

#Ipython
sudo apt-get -y install ipython || flag=1

#Ipython-Notebook
sudo apt-get -y install ipython-notebook || flag=1

#Pandas
sudo apt-get -y install python-pandas || flag=1

#Seaborn
yes | sudo pip install seaborn || flag=1

#scikit-learn
yes | sudo pip install -U scikit-learn || flag=1


if [ $flag == 1 ]
then
  echo "--------------- Failed ! Please retry ----------------"
  exit
fi

echo "---------------- Successfull ! ---------------"
