# install rstudio in docker
docker pull rocker/rstudio
sudo docker run -d -p 8787:8787 rocker/rstudio
# type 0.0.0.0:8787 on the web browser (local only)
# you will see a RStudio login page ask for Username and password.
# Username: rstudio
# Password: rstudio

# if you want to add a local directory map to Rstudio:
sudo docker run -d -p 8787:8787 -v your_local_directory:/root rocker/rstudio
# you can type "cd root" to see all the file in your local directory