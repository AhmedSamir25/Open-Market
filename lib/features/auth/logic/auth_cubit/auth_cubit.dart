import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_market/features/auth/data/repo/auth_repo.dart';

part 'auth_state.dart';


class AuthCubit extends Cubit<AuthState> {
  final AuthRepository _authRepository;

  AuthCubit(this._authRepository) : super(AuthInitial());
    final formKeyLogin = GlobalKey<FormState>();
    final formKeySignup = GlobalKey<FormState>();
    final emailConteoller = TextEditingController();
    final passwordConteoller = TextEditingController();
    final nameConteoller = TextEditingController();

  void registerWithEmail({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      await _authRepository.registerWithEmail(email, password, name);
      emit(UserSignSuccessState());
    } catch (e) {
      emit(FeiledCreatedUserState(massage: e.toString()));
    }
  }

  void signIn({required String email, required String password}) async {
    try {
      await _authRepository.signIn(email, password);
      emit(UserSignSuccessState());
    } catch (e) {
      emit(FeiledCreatedUserState(massage: e.toString()));
    }
  }

  void signInWithGoogle() async {
    try {
      await _authRepository.signInWithGoogle();
      emit(UserSignSuccessState());
    } catch (e) {
      emit(FeiledCreatedUserState(massage: e.toString()));
    }
  }
  void signOut() async{
    await _authRepository.signOut();
  }

  Future<void> resetPassword({required String email}) async {
    try {
      await _authRepository.resetPassword(email);
      emit(SuccessResetPasswordState());
    } catch (e) {
      emit(FeiledResetPasswordState(massage: e.toString()));
    }
  }
}
