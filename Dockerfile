FROM ubuntu:18.04

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

COPY ["deeplearningproject_environment.yml", "/root/deeplearningproject_environment.yml"]

RUN apt-get update --fix-missing && apt-get install -y wget bzip2 ca-certificates \
libglib2.0-0 libxext6 libsm6 libxrender1 \
git mercurial subversion python-dev gcc

# install miniconda and python 2.7
RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda2-4.5.11-Linux-x86_64.sh -O ~/miniconda.sh && \
/bin/bash ~/miniconda.sh -b -p /opt/conda && \
rm ~/miniconda.sh && \
ln -s /opt/conda/etc/profile.d/conda.sh /etc/profile.d/conda.sh && \
echo ". /opt/conda/etc/profile.d/conda.sh" >> ~/.bashrc

RUN /opt/conda/bin/conda env create -f /root/deeplearningproject_environment.yml
RUN echo "conda activate deeplearningproject" >> ~/.bashrc
SHELL ["/bin/bash", "-c", "source ~/.bashrc"]
RUN conda activate deeplearningproject

# DeepLearningProject setup additionnals commands
RUN python -m ipykernel install --user --name deeplearningproject --display-name "deeplearningproject"

CMD [ "/bin/bash" ]
