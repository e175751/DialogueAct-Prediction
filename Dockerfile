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
   libreadline-dev

RUN conda install -c conda-forge numpy
RUN conda install -c conda-forge jupyterlab
RUN conda install -c conda-forge tensorboard
RUN conda install pytorch==1.9.0 torchvision torchaudio cudatoolkit=11.1 -c pytorch -c conda-forge
RUN conda install -c conda-forge jsonlines
RUN conda install -c conda-forge pyhocon
RUN conda install -c conda-forge transformers
RUN conda install -c conda-forge gensim
RUN conda install -c conda-forge scikit-learn
RUN conda install -c conda-forge nltk
RUN conda install -c pytorch torchtext
RUN mkdir work

ENV NVIDIA_VISIBLE_DEVICES all
ENV NVIDIA_DRIVER_CAPABILITIES utility,compute

ENTRYPOINT ["jupyter-lab", "--ip=0.0.0.0", "--port=8883", "--no-browser", "--allow-root", "--NotebookApp.token=''"]
