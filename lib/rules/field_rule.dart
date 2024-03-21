import 'package:intl_phone_field/rules/validation_error.dart';

abstract class FieldRule {
  ValidationError? validate(String value);
}

class MinLength implements FieldRule {
  final int minLength;

  const MinLength({
    required this.minLength,
  }) : assert(minLength >= 0);

  @override
  MinLengthError? validate(String value) {
    if (value.length >= minLength) return null;
    return MinLengthError(
      minLength: minLength,
      actualLength: value.length,
    );
  }
}

class MaxLength implements FieldRule {
  final int maxLength;

  const MaxLength({
    required this.maxLength,
  }) : assert(maxLength >= 0);

  @override
  MaxLengthError? validate(String value) {
    if (value.length <= maxLength) return null;
    return MaxLengthError(
      maxLength: maxLength,
      actualLength: value.length,
    );
  }
}
