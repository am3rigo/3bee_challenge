import 'package:go_router/go_router.dart';
import 'package:threebee_challenge/features/apiaries/apiaries_overview_page.dart';
import 'package:threebee_challenge/features/apiaries/cubit/apiaries_cubit.dart';
import 'package:threebee_challenge/features/authentication/login_page.dart';
import 'package:threebee_challenge/shared_export.dart';

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
        builder: (context, state) => BlocProvider(
          create: (context) => ApiariesCubit(),
          lazy: false,
          child: const ApiariesOverviewPage(),
        ),
      ),
    ],
    debugLogDiagnostics: true,
    refreshListenable: authenticationNotifier,
    redirect: (context, state) async {
      return handleRedirect(
        nextLocation: state.subloc,
        isAuthenticated: authenticationNotifier.isAuthenticated,
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
