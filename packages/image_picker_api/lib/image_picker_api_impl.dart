import 'package:image_picker/image_picker.dart' as image_picker;
import 'package:image_picker/image_picker.dart';
import 'package:image_picker_api/mappers.dart';

import 'image_picker_api.dart';

class ImagePickerApiImpl implements ImagePickerApi {
  final image_picker.ImagePicker imagePicker;

  const ImagePickerApiImpl(this.imagePicker);

  @override
  Future<XFile?> pickCameraImage({
    double? maxWidth,
    double? maxHeight,
    int? imageQuality,
    PrefferedCamera preferredCameraDevice = PrefferedCamera.rear,
    bool requestFullMetadata = true,
  }) async {
    return imagePicker.pickImage(
      source: image_picker.ImageSource.camera,
      maxHeight: maxHeight,
      maxWidth: maxWidth,
      imageQuality: imageQuality,
      preferredCameraDevice: preferredCameraDevice.toCamera(),
    );
  }

  @override
  Future<XFile?> pickGalleryImage({
    double? maxWidth,
    double? maxHeight,
    int? imageQuality,
    bool requestFullMetadata = true,
  }) async {
    return imagePicker.pickImage(
      source: image_picker.ImageSource.camera,
      maxHeight: maxHeight,
      maxWidth: maxWidth,
      imageQuality: imageQuality,
    );
  }
}
