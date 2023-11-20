# 可用于将一组分块扫描的图像合并成一张大图，该方法要求图像相互之间有可以重叠的部分。
# 1. 扫描件
# 2. 全景图像拼接

from PIL import Image
import numpy as np
import cv2

class ImagesStitch:
    def read_images(self, image_paths):
        images = [cv2.imread(image) for image in image_paths]
        return images

    def stitch_images(self, images):
        stitcher = cv2.Stitcher_create()
        status, stitched = stitcher.stitch(images)

        if status == cv2.Stitcher_OK:
            return stitched
        else:
            print("Error during stitching, status code = ", status)
            return None

    def save_image(self, image, output_path):
        cv2.imwrite(output_path, image)

    def process_images(self, image_paths, export_image_name):
        images = self.read_images(image_paths)
        stitched_image = self.stitch_images(images)

        if stitched_image is not None:
            self.save_image(stitched_image, export_image_name)

        print("Create image:", export_image_name, "successful.")

if __name__ == "__main__":
    image_paths = [
        fr'C:\Users\gongcen\Downloads\HPPrinter\01\0015.jpg',
        fr'C:\Users\gongcen\Downloads\HPPrinter\01\0016.jpg',
        fr'C:\Users\gongcen\Downloads\HPPrinter\01\0017.jpg',
        fr'C:\Users\gongcen\Downloads\HPPrinter\01\0018.jpg',
        fr'C:\Users\gongcen\Downloads\HPPrinter\01\0019.jpg'
        # Add more paths as needed
    ]
    images_stitch = ImagesStitch()
    images_stitch.process_images(image_paths, 'stitched_image_01.png')
