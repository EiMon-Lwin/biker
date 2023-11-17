import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class UIConstants {
  static const double navbarTopCornderRadius = 16.0;

  static const double topCornderRadius = 30.0;
  static const double submitBottomBarHeight = 88.0;

  static const double horizontalPadding = 18.0;

  static const shiftedBannerPadding = EdgeInsets.symmetric(
    horizontal: UIConstants.horizontalPadding - 4.0,
    vertical: 0,
  );

  static const horizontalItemPadding = EdgeInsets.symmetric(
    horizontal: UIConstants.horizontalPadding,
    vertical: 0,
  );

  static const double crossAxisExtent = 400.0;

  static final dateFormat = DateFormat('dd/MMM/yyyy');
  static final datetimeFormat = DateFormat('dd/MMM/yyyy h:mm a');

  static final orderTimeFormat = DateFormat('dd MMM h:mm a');
  static final timeFormat = DateFormat('h:mm a');
  static final nearDateFormat = DateFormat(r"E, MMM d");
  static final nearDateTimeFormat = DateFormat(r"E, MMM d h:mm a");

  static const int cacheImageWidth = 500;
  static const double maxMobileWidth = 599;
}
