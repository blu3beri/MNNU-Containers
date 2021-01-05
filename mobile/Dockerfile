FROM python:3.7-buster

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 'CE7709D068DB5E88' \
    && apt-get update \
    && apt-get install -y software-properties-common \
    && apt-get install apt-utils \
    && apt-get update \
    && add-apt-repository 'deb https://repo.sovrin.org/sdk/deb bionic stable' \
    && apt-get update \
    && apt-get install -y libindy

RUN pip install aries-cloudagent
RUN pip install git+https://github.com/blu3beri/aries-acapy-plugin-toolbox.git@master#egg=aries_acapy_plugin_toolbox

ENTRYPOINT [ "bash", "-c" ]
