part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object?> get props => [];
}

class PostLoginEvent extends LoginEvent {
  final LoginRequest loginRequest;
  const PostLoginEvent(this.loginRequest);

  @override
  List<Object?> get props => [loginRequest];
}

class CheckLoginEvent extends LoginEvent {}
