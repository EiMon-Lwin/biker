import 'package:extensions/context.dart';
import 'package:flutter/material.dart';

//Profile Avatar
class AvatarCard extends StatelessWidget {
  final ImageProvider<Object>? foregroundImage;
  final ImageProvider<Object>? backgroundImage;
  final double size;
  
  const AvatarCard({
    super.key,
    this.size = kSize,
    this.foregroundImage,
    this.backgroundImage,
  });

  static const double kSize = 100.0;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(size / 2);
    final border = Border.all(
      color: context.theme.cardColor,
      width: 1.0,
    );

    final boxShadow = BoxShadow(
      color: context.theme.shadowColor.withOpacity(0.05),
      blurRadius: 2.0,
      spreadRadius: 2.0,
    );

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        border: border,
        boxShadow: [boxShadow],
        image: DecorationImage(
          image: backgroundImage ??
              const AssetImage(
                'assets/images/person.png',
              ),
          fit: BoxFit.cover,
        ),
      ),
      foregroundDecoration: BoxDecoration(
        border: border,
        borderRadius: borderRadius,
        image: foregroundImage == null
            ? null
            : DecorationImage(
                image: foregroundImage!,
                fit: BoxFit.cover,
              ),
      ),
    );
  }
}
