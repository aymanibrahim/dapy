FROM buildpack-deps:bionic

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -qq update && \\
    apt-get -qq install --yes --no-install-recommends locales > /dev/null && \\    
    apt-get -qq purge && \\    
    apt-get -qq clean && \\    
    rm -rf /var/lib/apt/lists/*

RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \\
    locale-gen

ENV LC_ALL en_US.UTF-8

ENV LANG en_US.UTF-8

ENV LANGUAGE en_US.UTF-8

ENV SHELL /bin/bash

ARG NB_USER

ARG NB_UID

ENV USER ${NB_USER}

ENV HOME /home/${NB_USER}

RUN adduser --disabled-password --gecos "Default user" --uid ${NB_UID} ${NB_USER}

RUN wget --quiet -O - https://deb.nodesource.com/gpgkey/nodesource.gpg.key |  apt-key add - && \\
    DISTRO="bionic" && \\    
    echo "deb https://deb.nodesource.com/node_10.x $DISTRO main" >> /etc/apt/sources.list.d/nodesource.list && \\    
    echo "deb-src https://deb.nodesource.com/node_10.x $DISTRO main" >> /etc/apt/sources.list.d/nodesource.list

RUN apt-get -qq update && \\    
    apt-get -qq install --yes --no-install-recommends less nodejs unzip > /dev/null && \\    
    apt-get -qq purge && \\    
    apt-get -qq clean && \\    
    rm -rf /var/lib/apt/lists/*

EXPOSE 8888

ENV NPM_DIR ${APP_BASE}/npm

ENV NPM_CONFIG_GLOBALCONFIG ${NPM_DIR}/npmrc

ENV CONDA_DIR ${APP_BASE}/conda

ENV NB_PYTHON_PREFIX ${CONDA_DIR}/envs/notebook

ENV KERNEL_PYTHON_PREFIX ${NB_PYTHON_PREFIX}

ENV PATH ${NB_PYTHON_PREFIX}/bin:${CONDA_DIR}/bin:${NPM_DIR}/bin:${PATH}

COPY conda/activate-conda.sh /etc/profile.d/activate-conda.sh

COPY conda/environment.py-3.7.frozen.yml /tmp/environment.yml

COPY conda/install-miniconda.bash /tmp/install-miniconda.bash

RUN mkdir -p ${NPM_DIR} && chown -R ${NB_USER}:${NB_USER} ${NPM_DIR}

USER ${NB_USER}

RUN npm config --global set prefix ${NPM_DIR}

USER root

RUN bash /tmp/install-miniconda.bash && \\
    rm /tmp/install-miniconda.bash /tmp/environment.yml

ARG REPO_DIR=${HOME}

ENV REPO_DIR ${REPO_DIR}

WORKDIR ${REPO_DIR}

ENV PATH ${HOME}/.local/bin:${REPO_DIR}/.local/bin:${PATH}

ENV CONDA_DEFAULT_ENV ${KERNEL_PYTHON_PREFIX}

COPY src/environment.yml ${REPO_DIR}/environment.yml

USER root

RUN chown -R ${NB_USER}:${NB_USER} ${REPO_DIR}

USER ${NB_USER}

RUN conda env update -p ${NB_PYTHON_PREFIX} -f "environment.yml" && \\
    conda clean --all -f -y && \\
    conda list -p ${NB_PYTHON_PREFIX}

USER root

COPY src/ ${REPO_DIR}

RUN chown -R ${NB_USER}:${NB_USER} ${REPO_DIR}

USER ${NB_USER}

RUN chmod +x postBuild

RUN ./postBuild

CMD ["jupyter", "notebook", "--ip", "0.0.0.0"]
