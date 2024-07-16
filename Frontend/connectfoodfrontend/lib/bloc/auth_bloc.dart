import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import "package:http/http.dart" as http;
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final String apiUrl;

  AuthBloc({required this.apiUrl}) : super(AuthInitial()) {
    on<AuthLogIn>(_onLogIn);
    on<AuthRegister>(_onRegister);
  }

  Future<void> _onLogIn(AuthLogIn event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    try {
      final response = await http.post(
        Uri.parse('$apiUrl/api/UserAccount/login'),
        body: jsonEncode({
          'email': event.email,
          'password': event.password,
        }),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final fullName = data['name'] as String;
        final nameParts = fullName.split(' ');

        final firstName = nameParts.isNotEmpty ? nameParts[0] : '';
        final lastName =
            nameParts.length > 1 ? nameParts.sublist(1).join(' ') : '';

        final user = UserAccount(
          id: data['id'],
          firstName: firstName,
          lastName: lastName,
          email: data['email'],
          password: event.password,
        );
        emit(AuthSuccess(user));
      } else {
        emit(AuthFailure('Failed to log in: ${response.body}'));
      }
    } catch (error) {
      emit(AuthFailure('Failed to log in: $error'));
    }
  }

  Future<void> _onRegister(AuthRegister event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    try {
      final response = await http.post(
        Uri.parse('$apiUrl/api/UserAccount/register' ),
        body: jsonEncode({
          'firstname': event.firstname,
          'lastname': event.lastname,
          'email': event.email,
          'password': event.password,
        }),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final fullName = data['name'] as String;
        final nameParts = fullName.split(' ');

        final firstName = nameParts.isNotEmpty ? nameParts[0] : '';
        final lastName =
            nameParts.length > 1 ? nameParts.sublist(1).join(' ') : '';

        final user = UserAccount(
          id: data['id'],
          firstName: firstName,
          lastName: lastName,
          email: data['email'],
          password: event.password,
        );
        emit(AuthSuccess(user));
      } else {
        emit(AuthFailure('Failed to register: ${response.body}'));
      }
    } catch (error) {
      emit(AuthFailure('Failed to register: $error'));
    }
  }
}
