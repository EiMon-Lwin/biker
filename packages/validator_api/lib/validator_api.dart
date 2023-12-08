abstract class ValidatorApi {
  String? validatePhoneNumber(
    String? value, {
    String? suffixValue,
    bool isOptional = false,
  });
}