FROM continuumio/miniconda3

RUN git clone https://github.com/aboulle/RaDMaX-online /radmax

WORKDIR /radmax

RUN conda install -c anaconda scipy
RUN conda install -c anaconda numpy
RUN conda install -c conda-forge ipywidgets=7.5.1
RUN conda install -c conda-forge bqplot=0.11.9
RUN conda install -c conda-forge voila=0.1.11
RUN conda install -c conda-forge h5py

RUN apt update && apt install -y gcc
RUN pip install xrayutilities==1.5.1

CMD [ "voila", "--no-browser", "--theme=dark", "RaDMaX.ipynb" ]


