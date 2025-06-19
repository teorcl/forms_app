part of 'register_cubit.dart';

///Estado del formulario de registro
enum FormStatus { invalid, valid, validating, posting }

class RegisterState extends Equatable {
  final FormStatus formStatus;
  final String username;
  final String email;
  final String password;

  const RegisterState({
    required this.formStatus,
    required this.username,
    required this.email,
    required this.password,
  });

  factory RegisterState.initialState() {
    return const RegisterState(
      formStatus: FormStatus.invalid,
      username: '',
      email: '',
      password: '',
    );
  }

  RegisterState copyWith({
    FormStatus? formStatus,
    String? username,
    String? email,
    String? password,
  }) {
    return RegisterState(
      formStatus: formStatus ?? this.formStatus,
      username: username ?? this.username,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  @override
  List<Object> get props => [formStatus, username, email, password];
}
