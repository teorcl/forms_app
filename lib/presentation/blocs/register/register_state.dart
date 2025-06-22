part of 'register_cubit.dart';

///Estado del formulario de registro
enum FormStatus { invalid, valid, validating, posting }

class RegisterState extends Equatable {
  final FormStatus formStatus;
  final Username username;
  final Email email;
  final Password password;
  final bool isValid;

  const RegisterState({
    required this.formStatus,
    required this.username,
    required this.email,
    required this.password,
    required this.isValid,
  });

  factory RegisterState.initialState() {
    return const RegisterState(
      isValid: false,
      formStatus: FormStatus.invalid,
      username: Username.pure(),
      email: Email.pure(),
      password: Password.pure(),
    );
  }

  RegisterState copyWith({
    FormStatus? formStatus,
    Username? username,
    Email? email,
    Password? password,
    bool? isValid,
  }) {
    return RegisterState(
      isValid: isValid ?? this.isValid,
      formStatus: formStatus ?? this.formStatus,
      username: username ?? this.username,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  @override
  List<Object> get props => [formStatus, username, email, password, isValid];
}
