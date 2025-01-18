import 'package:flutter_test/flutter_test.dart';

import 'package:form_field_validation/form_field_validation.dart';

void main() {
  test('Email tekshirish', () {
    expect(FormValidator.validateEmail('test@example.com'), null);
    expect(FormValidator.validateEmail('invalid-email'), 'Email formati noto\'g\'ri');
  });

  test('Parol kuchliligini tekshirish', () {
    expect(FormValidator.validatePassword('StrongPass1'), null);
    expect(FormValidator.validatePassword('weak'), 'Parol kamida 8 ta belgidan iborat bo‘lishi kerak');
  });

  test('Majburiy maydonni tekshirish', () {
    expect(FormValidator.validateRequired('Some value'), null);
    expect(FormValidator.validateRequired(''), 'Bu maydonni to‘ldirish shart');
  });
}

