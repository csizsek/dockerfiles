FROM jupyter/tensorflow-notebook

LABEL maintainer="Peter Csizsek <peter.csizsek@gmail.com>"

RUN conda install --quiet --yes\
        'bokeh' \
        'dlib' \
        'geopandas' \
        'hyperopt' \
        'imagemagick' \
        'imutils' \
        'opencv' \
        'pillow' \
        'plotly' \
        'rasterio' \
        'scikit-image' \
        'seaborn' \
        'shapely' \
        'statsmodels' \
        'tqdm' \
    && conda install -c conda-forge 'xgboost' \
	&& conda clean -tipsy && \
		fix-permissions $CONDA_DIR && \
		fix-permissions /home/$NB_USER

RUN export NODE_OPTIONS=--max-old-space-size=4096
RUN jupyter labextension install @jupyter-widgets/jupyterlab-manager@1.1 --no-build
RUN jupyter labextension install plotlywidget@1.5.0 --no-build
RUN jupyter labextension install jupyterlab-plotly@1.5.0 --no-build
RUN jupyter lab build
RUN unset NODE_OPTIONS

