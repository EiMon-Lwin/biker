import 'package:cross_file/cross_file.dart';

abstract class ImagePickerApi {
  Future<XFile?> pickCameraImage({
    double? maxWidth,
    double? maxHeight,
    int? imageQuality,
    PrefferedCamera preferredCameraDevice = PrefferedCamera.rear,
    bool requestFullMetadata = true,
  });

  Future<XFile?> pickGalleryImage({
    double? maxWidth,
    double? maxHeight,
    int? imageQuality,
    bool requestFullMetadata = true,
  });
}

enum ImageSource {
  camera,
  gallery,
}

enum PrefferedCamera {
  rear,
  front,
}
