from gv_tools.resource.resource_manager import ResourceManager
import os
from data.create_csv import create_csv


if __name__ == "__main__":
    resource_manager = ResourceManager("resource")
    resource_manager.read_manifest("app", "resource_manifest.json")
    resource_manager.load_all_resources()

    test_video_path = os.path.join("resource", "iga_test.mp4")
    c3d_model_path = os.path.join("resource", "c3d_model.pkl")

    list_file_path = create_csv(test_video_path)


