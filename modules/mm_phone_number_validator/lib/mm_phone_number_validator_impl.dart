import 'mm_phone_number_validator.dart';

class MyanmarPhoneNumberValidatorImplementation implements MyanmarPhoneNumberValidator {
  @override
  bool isValid(String phoneNumber) {
    var number = _sanitizeNumber(phoneNumber: phoneNumber);
    var mmPhoneRegex = r'^(09|\+?950?9|\+?95950?9)\d{7,9}$';
    return _validate(number, mmPhoneRegex);
  }

  String _sanitizeNumber({required String phoneNumber}) {
    var number = phoneNumber.trim();
    number = number.replaceAll(" ", "");
    number = number.replaceAll("-", "");

    var countryCodeRegex = r'^\+?950?9\d+$';
    if (_validate(number, countryCodeRegex)) {
      var doubleCountryCodeRegex = r"^\+?95950?9\d{7,9}$";
      if (_validate(number, doubleCountryCodeRegex)) {
        number = number.stringByReplacingFirstOccurrenceOfString(
            target: "9595", withString: "95");
      }

      var zeroBeforeAreaCodeRegex = r"^\+?9509\d{7,9}$";
      if (_validate(number, zeroBeforeAreaCodeRegex)) {
        number = number.stringByReplacingFirstOccurrenceOfString(
            target: "9509", withString: "959");
      }
    }
    return number;
  }

  bool _validate(String input, String source) {
    var regex = RegExp(source, caseSensitive: false);
    return regex.hasMatch(input);
  }
}

extension Helper on String {
  String stringByReplacingFirstOccurrenceOfString({required String target, required String withString}) {
    return replaceFirst(target, withString);
  }
}
