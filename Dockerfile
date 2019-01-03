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

CMD ["python", "run_c3d_extractor.py"]
CMD ["python", "data/create_video_db.py", "--list_file=resource/list.csv", "--output_file=test_lmdb_data", "--use_list=1", "--use_video_id=1", "--use_start_frame=1"]
