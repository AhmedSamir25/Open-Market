part of 'auth_cubit.dart';

sealed class AuthState {}

final class AuthInitial extends AuthState {}

class UserSignSuccessState extends AuthState {}

class FeiledCreatedUserState extends AuthState {
  String massage;
  FeiledCreatedUserState({required this.massage});
}

class FeiledSendUserDataState extends AuthState {
  String massage;
  FeiledSendUserDataState({required this.massage});
}

class FeiledResetPasswordState extends AuthState {
  String massage;
  FeiledResetPasswordState({required this.massage});
}

class SuccessResetPasswordState extends AuthState {}