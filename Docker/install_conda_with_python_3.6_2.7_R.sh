# install conda with both python 3.6 and python 2.7
# install R in conda


# activate python 3.6 on local
# source activate py36
# source deactivate py36


# Anaconda repo link: https://repo.continuum.io/archive/
# linux
wget http://repo.continuum.io/archive/Anaconda3-4.1.1-Linux-x86_64.sh
bash Anaconda3-4.1.1-Linux-x86_64.sh
# mac
wget https://repo.continuum.io/archive/Anaconda2-5.0.1-MacOSX-x86_64.sh
bash Anaconda2-5.0.1-MacOSX-x86_64.sh

# need install python2 and python3
brew install python3
brew install python

python2 -m pip install ipykernel 
python2 -m ipykernel install --user
python3 -m pip install ipykernel 
python3 -m ipykernel install --user

# install R in conda
conda install r-essentials
conda update r-essentials

cd code_directory
jupyter notebook

# install docker with jupyter notebook
docker pull jupyter/datascience-notebook

docker run -it --rm -p 8888:8888 -v /Users/hai/Documents/work/DBMI/MED263/med263_test:/root jupyter/datascience-notebook

