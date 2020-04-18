# 1. Install Ubuntu
FROM        ubuntu:18.04
MAINTAINER  hyeon95y@gmail.com
RUN         apt-get -y update

# 2. Install pip3, unzip, kaggle
RUN         apt-get -y install python3-pip
RUN         apt-get -y install unzip
RUN         apt-get -y install git
RUN         apt-get -y install screen
RUN         apt-get -y install htop

# 3. Install Jupyter Extensions
RUN         pip3 install jupyterlab
RUN         pip3 install ipywidgets
RUN         apt-get -y install nodejs npm
RUN         jupyter nbextension enable --py widgetsnbextension   
RUN         jupyter labextension install @jupyter-widgets/jupyterlab-manager
RUN         jupyter labextension install @jupyterlab/toc

# 4. Install Packages
RUN         pip3 install numpy
RUN         pip3 install pandas
RUN         pip3 install statsmodels
RUN         pip3 install sklearn
RUN         pip3 install matplotlib

# 5. Copy Source
COPY . /usr/src/rrhy
