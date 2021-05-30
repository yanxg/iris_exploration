# this is to use python as the base image

FROM python:3.8

# meta-data

LABEL maintainer = "Simon Yan <htlbydgod@gmail.com>"

# set working directory as app

WORKDIR /app

# copy the content in this directory to app folder in container

COPY . /app

# install requirement libraries defined in requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# RUN pip --no-cache-dir install numpy pandas jupyter

# expose port 8888 in container to be availabe for communication with this container

EXPOSE 8888

# run following jupyter when the container is launched

#CMD ["jupyter", "notebook", "--ip='*'", "--port=8888", "browser", "--allow-root"]
#CMD ["jupyter", "notebook", "--ip='*'", "--port=8888", "--allow-root"]

#CMD ["jupyter", "notebook", "--ip='*'"]

CMD ["jupyter-notebook", "--ip='*'", "--port=8888", "--allow-root"]
