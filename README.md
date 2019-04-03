# GIS-ML Alpine Docker Image

> includes dependencies for **Geographic information systems** (GIS) and **Machine Learning** (ML) applications.

DockerHub [link](https://hub.docker.com/r/loopiezlol/apline-gis-ml-jupyter)

This image features:

<!-- TOOD: lock versions -->

- Alpine base Linux image
- Python 3.6
- Geo-spatial Data Abstraction Library (GDAL)
- NodeJS, npm
- Jupyter Notebook (with `ipywidges` and `ipyleaflet`)
- Python science helper libraries `numpy`, `scipy`, `matplotlib`, `shapely`
- Python [PlanetLabs](planet.com) api client `planet` and GIS library `rasterio`
- Python ML + Computer Vision libraries: `sklearn`, `scikit-image`, `mahotas`, `joblib`

## Warning

Use with caution, currently relying on Alpine `testing` repository.
The image amounts to 2.4 GB.
