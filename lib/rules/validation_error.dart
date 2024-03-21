interface class ValidationError {}

class MinLengthError implements ValidationError {
  final int minLength;
  final int? actualLength;

  MinLengthError({
    required this.minLength,
    this.actualLength,
  });

  @override
  // ignore: hash_and_equals
  bool operator ==(Object other) {
    if (other is MinLengthError) {
      return minLength == other.minLength;
    }
    return false;
  }

  @override
  String toString() {
    return 'MinLengthError($minLength, $actualLength)';
  }
}

class MaxLengthError implements ValidationError {
  final int maxLength;
  final int? actualLength;

  MaxLengthError({
    required this.maxLength,
    this.actualLength,
  });

  @override
  // ignore: hash_and_equals
  bool operator ==(Object other) {
    if (other is MaxLengthError) {
      return maxLength == other.maxLength;
    }
    return false;
  }

  @override
  String toString() {
    return 'MaxLengthError($maxLength, $actualLength)';
  }
}

class InvalidPrefixError implements ValidationError {
  final String expectedPrefix;
  final String? actualPrefix;

  InvalidPrefixError({
    required this.expectedPrefix,
    this.actualPrefix,
  });

  @override
  // ignore: hash_and_equals
  bool operator ==(Object other) {
    if (other is InvalidPrefixError) {
      return expectedPrefix == other.expectedPrefix;
    }
    return false;
  }

  @override
  String toString() {
    return 'InvalidPrefixError($expectedPrefix, $actualPrefix)';
  }
}
