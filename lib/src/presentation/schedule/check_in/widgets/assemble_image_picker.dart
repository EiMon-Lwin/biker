import 'dart:async';
import 'dart:io';

import 'package:biker/src/presentation/schedule/check_in/widgets/remove_button.dart';
import 'package:biker/src/utils/context_extension.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:localization_api/localization_api.dart';
import 'package:resource_strings/resource_strings.dart';

class AssembleImagePicker extends StatelessWidget {
  final double size;
  final File? selectedImageFile;
  final FutureOr<void> Function()? onAddImageButtonPressed;
  final FutureOr<void> Function()? onRemoveSelectedImage;

  const AssembleImagePicker({
    super.key,
    this.size = kSize,
    this.selectedImageFile,
    this.onAddImageButtonPressed,
    this.onRemoveSelectedImage,
  });

  static const double kSize = 100.0;

  @override
  Widget build(BuildContext context) {
    final localeApi = inject<LocalizationApi>();
    final resouceStrings = inject<ResourceStrings>();

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            localeApi.tr(resouceStrings.lblAddImage),
            style: context.theme.textTheme.titleMedium,
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: onAddImageButtonPressed,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: context.width,
                  padding: const EdgeInsets.symmetric(vertical: 40.0),
                  decoration: BoxDecoration(
                    image: selectedImageFile != null
                        ? DecorationImage(
                            image: FileImage(selectedImageFile!),
                            fit: BoxFit.cover,
                          )
                        : null,
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade200,
                  ),
                  child: Icon(
                    Icons.camera_alt,
                    size: size * 0.4,
                    color: context.theme.scaffoldBackgroundColor,
                  ),
                ),
                if (selectedImageFile != null)
                  Positioned(
                    top: -10.0,
                    right: -10.0,
                    child: RemoveButton(
                      onPressed: onRemoveSelectedImage ?? () {},
                    ),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
