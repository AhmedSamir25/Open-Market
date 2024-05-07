import 'package:go_router/go_router.dart';
import 'package:open_market/core/utils/check_login_state.dart';
import 'package:open_market/features/auth/view/forget_password_view.dart';
import 'package:open_market/features/auth/view/sign_up_view.dart';

abstract class AppRouter {
  static const checkUserLogin = '/';
  static const signUpView = '/signUpView';
  static const forgetView = '/forgetView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: checkUserLogin,
        builder: (context, state) => const CheckUserLogin(),
      ),
      GoRoute(path: signUpView,
      builder: (context, state) => const SignUpView(),
      ),
      GoRoute(path: forgetView,
      builder: (context, state) => const ForgetPasswordView(),
      ),
    ],
  );
}