import 'package:mm_phone_number_validator/mm_phone_number_validator.dart';
import 'package:resource_strings/resource_strings.dart';

import 'validator_api.dart';

class ValidatorApiImpl implements ValidatorApi {
  final ResourceStrings rStrings;
  final MyanmarPhoneNumberValidator mmPhNoValidator;

  const ValidatorApiImpl(this.rStrings, this.mmPhNoValidator);

  @override
  String? validatePhoneNumber(
    String? value, {
    String? prefix,
    String? suffixValue,
    bool isOptional = false,
  }) {
    final trimmed = value?.trim();
    
    if(trimmed?.isNotEmpty != true && isOptional) return null;

    final text = (prefix ?? "") + trimmed! +  (suffixValue ?? "");

    if(mmPhNoValidator.isValid(text)) {
      return rStrings.lblPhoneNumberInvalid;
    }
  
    return null;
  }
} 