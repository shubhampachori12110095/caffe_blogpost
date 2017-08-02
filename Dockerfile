FROM bvlc/caffe:cpu

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

ADD . /model1

WORKDIR /model1

VOLUME ["/model1/data", "/model1/notebooks"]

EXPOSE 8888

CMD jupyter notebook --no-browser --ip=0.0.0.0 --allow-root --NotebookApp.token='demo'
