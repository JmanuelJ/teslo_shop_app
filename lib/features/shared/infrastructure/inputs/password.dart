import 'package:formz/formz.dart';

enum PasswordError { empty, length, format }

class Password extends FormzInput<String, PasswordError> {
  static final RegExp paswordRegExp = RegExp(
    r'(?:(?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$',
  );

  const Password.pure() : super.pure('');

  const Password.dirty(super.value) : super.dirty();

  String? get errorMessage {
    if (isValid || isValid) return null;

    if (displayError == PasswordError.empty) return 'El campo es requerido';
    if (displayError == PasswordError.length) return 'Minimo 6 caracteres';
    if (displayError == PasswordError.format) {
      return 'Debe de tener Mayúscula, letras y un numero';
    }

    return null;
  }

  @override
  PasswordError? validator(String value) {
    if (value.isEmpty || value.trim().isEmpty) return PasswordError.empty;
    if (value.length < 6) return PasswordError.length;
    if (!paswordRegExp.hasMatch(value)) return PasswordError.format;

    return null;
  }
}
