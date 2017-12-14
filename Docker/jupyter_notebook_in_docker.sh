# install docker with jupyter notebook
docker pull jupyter/datascience-notebook

# run docker
docker run -it --rm -p 8888:8888 jupyter/datascience-notebook

# run docker with local directory
docker run -it --rm -p 8888:8888 -v /Users/hai/Documents/work/DBMI/MED263/med263_test:/root jupyter/datascience-notebook

# web page in your local computer could be: http://localhost:8888
# if you are running on your VM, the web link could be: http://[all ip addresses on your system]:8888
