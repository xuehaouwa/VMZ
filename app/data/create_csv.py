import csv
import os


def create_csv(video_path, num_clips=8, frame_interval=8, output='list.csv', base_folder='resource'):

    if not os.path.exists(base_folder):
        os.mkdir(base_folder)
    list_file_dir = os.path.join(base_folder, output)

    with open(list_file_dir, "w") as csv_file:
        csv_writer = csv.writer(csv_file, delimiter=',')
        csv_writer.writerow(['org_video', 'label', 'start_frm', 'video_id'])
        for i in range(num_clips):
            csv_writer.writerow([video_path, 0, str(frame_interval * i), str(i+1)])

    return list_file_dir


