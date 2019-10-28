FROM continuumio/miniconda3

RUN git clone https://github.com/aboulle/RaDMaX-online /radmax

WORKDIR /radmax

RUN conda install -c anaconda scipy
RUN conda install -c anaconda numpy   
RUN conda install -c conda-forge ipywidgets
RUN conda install -c conda-forge bqplot
RUN conda install -c conda-forge voila

RUN apt install -y gcc
RUN pip install xrayutilities

CMD [ "voila", "RaDMaX.ipynb" ]


