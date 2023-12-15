part of 'login_bloc.dart';

sealed class LoginEvent {}

class LoginButtonPressedeEvent extends LoginEvent {
  final String email;
  final String password;

  LoginButtonPressedeEvent({required this.email, required this.password});
}
