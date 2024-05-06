import 'package:go_router/go_router.dart';
import 'package:open_market/features/auth/view/login_in.dart';

abstract class AppRouter {
  static const authView = '/';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: authView,
        builder: (context, state) => const AuthView(),
      ),
    ],
  );
}