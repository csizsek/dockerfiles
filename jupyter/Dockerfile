FROM jupyter/tensorflow-notebook

LABEL maintainer="Peter Csizsek <peter.csizsek@gmail.com>"

RUN conda install --quiet --yes\
        'seaborn' \
        'hyperopt' \
        'statsmodels' \
        'pillow' \
        'imagemagick' \
        'opencv' \
        'bokeh' \
        'scikit-image' \
        'tqdm' \
        'plotly' \
    && conda install -c conda-forge 'xgboost' \
	&& conda clean -tipsy && \
		fix-permissions $CONDA_DIR && \
		fix-permissions /home/$NB_USER

