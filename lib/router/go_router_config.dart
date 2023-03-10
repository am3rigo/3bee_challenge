import 'package:go_router/go_router.dart';
import 'package:threebee_challenge/features/apiaries/apiaries_overview_page.dart';
import 'package:threebee_challenge/features/authentication/login_page.dart';

GoRouter createGoRouter() {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/',
        builder: (context, state) => const ApiariesOverviewPage(),
      ),
    ],
    debugLogDiagnostics: true,
    // refreshListenable: authenticationNotifier,
    redirect: (context, state) async {
      return handleRedirect(
        nextLocation: state.subloc,
        isAuthenticated: true,
      );
    },
  );
}

String? handleRedirect({
  required String nextLocation,
  bool isAuthenticated = false,
  bool isAdmin = false,
}) {
  if (isAuthenticated) {
    if (nextLocation == "/login") {
      return "/";
    }

    return null;
  }

  return '/login';
}
