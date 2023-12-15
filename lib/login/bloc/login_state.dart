part of 'login_bloc.dart';

sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class ValidationFailedError extends LoginState {
  final String message;

  ValidationFailedError({required this.message});
}

final class LoadingState extends LoginState {}

final class ValidationSucess extends LoginState {}
