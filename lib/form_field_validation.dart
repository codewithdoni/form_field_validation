library form_field_validation;

class FormValidator {
  // Email formatini tekshirish
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email manzili kiritilishi shart';
    }
    final emailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    if (!emailRegex.hasMatch(value)) {
      return 'Email formati noto\'g\'ri';
    }
    return null;
  }

  // Parol kuchliligini tekshirish
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Parol kiritilishi shart';
    }
    if (value.length < 8) {
      return 'Parol kamida 8 ta belgidan iborat bo‘lishi kerak';
    }
    final passwordRegex = RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d).+$');
    if (!passwordRegex.hasMatch(value)) {
      return 'Parol kamida 1 ta katta harf, kichik harf va raqamdan iborat bo‘lishi kerak';
    }
    return null;
  }

  // Majburiy maydonni tekshirish
  static String? validateRequired(String? value) {
    if (value == null || value.isEmpty) {
      return 'Bu maydonni to‘ldirish shart';
    }
    return null;
  }
}
