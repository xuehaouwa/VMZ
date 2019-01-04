

#### Command

python data/create_video_db.py --list_file resource/list.csv --output_file resource/lmdb_data --use_list 0 --use_video_id 1 --use_start_frame 0


python extract_features.py --test_data resource/lmdb_data --model_name c3d --model_depth 34 --clip_length_rgb 8 --load_model_path resource/c3d_model.pkl --output_path resource/features.pkl
