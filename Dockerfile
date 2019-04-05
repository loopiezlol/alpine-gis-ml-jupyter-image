FROM python:3.6-alpine

RUN echo 'http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories && \
  echo 'http://dl-cdn.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories 

RUN apk add --update --no-cache \
  --virtual build-libs \
  jpeg-dev libpng-dev  libc-dev linux-headers cython geos-dev gdal-dev

RUN apk add \
  g++ freetype-dev openblas-dev proj4 \
  gdal nodejs npm && \
  ln -s /usr/lib/libproj.so.13 /usr/lib/libproj.so

RUN pip install numpy --no-binary numpy && \
  pip install scipy matplotlib scikit-image joblib sklearn planet mahotas affine shapely rasterio && \
  pip install jupyter jupyterlab ipywidgets ipyleaflet && \
  jupyter labextension install jupyter-leaflet @jupyter-widgets/jupyterlab-manager

RUN apk del build-libs
