part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginRedirect extends LoginState {}

class LoginSuccess extends LoginState {
  final String token;

  const LoginSuccess(this.token);

  @override
  List<Object> get props => [token];
}

class LoginError extends LoginState {
  final String error;

  const LoginError(this.error);

  @override
  List<Object> get props => [error];
}

class EmailBlank extends LoginState {
  final String error;

  const EmailBlank(this.error);

  @override
  List<Object> get props => [error];
}

class PasswordBlank extends LoginState {
  final String error;

  const PasswordBlank(this.error);

  @override
  List<Object> get props => [error];
}
