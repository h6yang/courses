#!/bin/bash

#------------------------------------------------------------------------------------------------------------
# Install the most recent version of R, a language and environment for statistical computing and graphics
#------------------------------------------------------------------------------------------------------------
# add a following line to sources.list
#export CRAN_URL=http://cran.r-project.org
export CRAN_URL=http://cran.stat.ucla.edu
#bash -c " echo -e '\n'deb ${CRAN_URL}/bin/linux/ubuntu  precise/ >>  /etc/apt/sources.list "
bash -c " echo -e '\n'deb ${CRAN_URL}/bin/linux/ubuntu  trusty/ >>  /etc/apt/sources.list "


# add key to sign CRAN pacakges
# The Ubuntu archives on CRAN are signed with the key of "Michael Rutter <marutter@gmail.com>" with key ID E084DAB9. 
#   reference  http://cran.r-project.org/bin/linux/ubuntu/
apt-key adv --keyserver keyserver.ubuntu.com  --recv-keys E084DAB9

# update
apt-get update -y

# add specfic PPA
apt-get install -y python-software-properties 
add-apt-repository -y ppa:marutter/rdev

# update
apt-get update -y

# upgrade
apt-get upgrade -y

# install R base version
apt-get install -y r-base

# install R packages 
apt-get install -y r-base-dev
