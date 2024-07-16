part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

final class AuthSuccess extends AuthState {
  final UserAccount user;
  const AuthSuccess(this.user);
}


final class AuthFailure extends AuthState {
  final String message;
  const AuthFailure(this.message);
}

class UserAccount {
  final int? id;
  final String? firstName;
  final String? lastName;
  final String email;
  final String password;

  const UserAccount({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
  });

  @override
  List<Object?> get props => [
        id,
        firstName,
        lastName,
        email,
        password,
      
      ];
}


