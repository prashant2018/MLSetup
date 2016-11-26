# Installation guide

#python 2.7

sudo apt-get -y update && sudo apt-get update -y upgrade

sudo apt-get -y install python-pip python-dev build-essential
sudo pip install --upgrade pip

#Numpy
sudo apt-get -y install python-numpy
#Scipy
sudo apt-get -y install

#Matplotlib
sudo apt-get -y install python-matplotlib

#Ipython
sudo apt-get -y install ipython

#Ipython-Notebook
sudo apt-get -y install ipython-notebook

#Pandas
sudo apt-get -y install python-pandas

#Seaborn
yes | sudo pip install seaborn

#scikit-learn
yes | sudo pip install -U scikit-learn

echo "Done"
