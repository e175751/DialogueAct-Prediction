FROM continuumio/anaconda3


# Install apt package.
RUN DEBIAN_FRONTEND=noninteractive \
   apt-get update && apt-get install -y \
   apt-utils \
   less \
   wget \
   curl \
   git \
   graphviz \
   unzip \
   bzip2 \
   build-essential \
   vim \
   libncursesw5-dev \
   libgdbm-dev \
   libc6-dev \
   zlib1g-dev \
   libsqlite3-dev \
   tk-dev \
   libssl-dev \
   openssl \
   libbz2-dev \
   python-pip \
   libreadline-dev


RUN conda install -y tensorflow-gpu
RUN conda install -c anaconda tensorflow-datasets
RUN conda install pytorch torchvision -c pytorch 
RUN conda install -c conda-forge jsonlines
RUN conda install -c conda-forge pyhocon
RUN mkdir work

ENV NVIDIA_VISIBLE_DEVICES all
ENV NVIDIA_DRIVER_CAPABILITIES utility,compute

ENTRYPOINT ["jupyter-lab", "--ip=0.0.0.0", "--port=8883", "--no-browser", "--allow-root", "--NotebookApp.token=''"]
