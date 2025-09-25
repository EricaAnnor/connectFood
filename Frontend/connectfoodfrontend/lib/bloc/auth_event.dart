part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

final class AuthLogIn extends AuthEvent {
  final String email;
  final String password;

  const AuthLogIn({required this.email, required this.password});

  @override
  List<Object> get props => [email, password];
}

final class AuthRegister extends AuthEvent {
  final String firstname;
  final String lastname;
  final String email;
  final String password;
  
  AuthRegister({
    required this.firstname,
    required this.lastname,
    required this.email,
    required this.password,
  });

  @override
  List<Object> get props => [firstname,lastname,email, password];
}
