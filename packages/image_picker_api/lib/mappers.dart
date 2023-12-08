import 'package:image_picker/image_picker.dart' as image_picker;
import 'package:image_picker_api/image_picker_api.dart';

extension PluginImageSourceUtils on image_picker.ImageSource {
  ImageSource toImageSource() {
    return {
      image_picker.ImageSource.camera: ImageSource.camera,
      image_picker.ImageSource.gallery: ImageSource.gallery,
    }[this]!;
  }
}

extension ImageSourceUtils on ImageSource {
  image_picker.ImageSource toImageSource() {
    return {
      ImageSource.camera: image_picker.ImageSource.camera,
      ImageSource.gallery: image_picker.ImageSource.gallery,
    }[this]!;
  }
}

extension PluginCameraDeviceUtils on image_picker.CameraDevice {
  PrefferedCamera toCamera() {
    return {
      image_picker.CameraDevice.front: PrefferedCamera.front,
      image_picker.CameraDevice.rear: PrefferedCamera.rear,
    }[this]!;
  }
}

extension CameraDeviceUtils on PrefferedCamera {
  image_picker.CameraDevice toCamera() {
    return {
      PrefferedCamera.front: image_picker.CameraDevice.front,
      PrefferedCamera.rear: image_picker.CameraDevice.rear,
    }[this]!;
  }
}
