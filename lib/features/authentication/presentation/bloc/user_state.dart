part of 'user_bloc.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object> get props => [];
}

class AuthenticationInitial extends AuthenticationState {}

class UserLoading extends AuthenticationState {}

class UserLoaded extends AuthenticationState {
  final UserEntity user;

  const UserLoaded({required this.user});
}

class UserLoggedIn extends AuthenticationState {
  final UserEntity user;

  const UserLoggedIn({required this.user});
}

class UserError extends AuthenticationState {
  final String message;

  const UserError({required this.message});
}

class PasswordUpdating extends AuthenticationState {}

class PasswordUpdatedSuccessfully extends AuthenticationState {
  final UserEntity user;

  const PasswordUpdatedSuccessfully({required this.user});
}

class PasswordUpdateError extends AuthenticationState {
  final String message;

  const PasswordUpdateError({required this.message});
}

class GetUserByEmailInitial extends AuthenticationState {}

class GetUserByEmailLoaded extends AuthenticationState {
  final UserEntity? user;

  const GetUserByEmailLoaded({required this.user});
}

class GetUserByEmailError extends AuthenticationState {
  final String message;

  const GetUserByEmailError({required this.message});
}