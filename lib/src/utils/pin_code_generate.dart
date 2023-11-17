import 'dart:math';

String generatePINCode({int length = 6}) {
  final maxNumber = int.parse("9" * length);
  var code = "${Random.secure().nextInt(maxNumber)}";
  final zerocount = length - code.length;
  code = "${"0" * zerocount}$code";
  return code;
}