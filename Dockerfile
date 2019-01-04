FROM ufoym/deepo:all-py36-cu90
# Install FFMPEG
RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:jonathonf/ffmpeg-3
RUN apt-get update
RUN apt-get install -y ffmpeg libav-tools x264 x265

WORKDIR /app

RUN pip install gv-tools --index-url https://dev:usainbolt2018@nexus.genvis.co/repository/pypi-local/simple --upgrade
RUN pip install lmdb

ADD app /app

