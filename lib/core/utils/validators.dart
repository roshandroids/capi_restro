class Validators {
  static String? emailValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Please enter email';
    } else if (!RegExp(r'^[\w-\.\+]+@([\w-]+\.)+[\w-]{2,4}$')
        .hasMatch(value.trim())) {
      return 'Please enter valid email';
    } else {
      return null;
    }
  }

  static String? passwordValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Please enter password';
    } else if (value.length < 8 ||
        !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$')
            .hasMatch(value.trim())) {
      return 'Password must have 8 characters with uppercase, lowercase and a number';
    } else {
      return null;
    }
  }
}
