class FormValidators{

    static String? validateEmail(String? value){
        if(value == null || value.isEmpty){
          return 'Please enter your email';
        }
        if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
          return 'Please enter a valid email';
        }
        return null;
    }

    static String? validatePassword(String? value) {
      if (value == null || value.isEmpty) {
        return 'Please enter your password';
      }
      if (value.length < 8) {
        return 'Password must be at least 8 characters long';
      }
      return null;
    }

    static String? validatePhoneNumber(String? value) {
      if (value == null || value.isEmpty) {
        return 'Please enter your phone number';
      }
      if (!RegExp(r'^\d{10}$').hasMatch(value)) {
        return 'Enter a valid 10-digit phone number';
      }
      return null;
    }

    static String? validateUserName(String? value) {
      if (value == null || value.isEmpty) {
        return 'Please enter your name';
      }
      return null;
    }
}