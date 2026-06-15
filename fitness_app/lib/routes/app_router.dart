import 'package:go_router/go_router.dart';
import '../screens/splash_screen.dart';
import '../screens/main_dashboard.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: 'splash',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/dashboard',
        name: 'dashboard',
        builder: (context, state) => const MainDashboard(),
      ),
    ],
  );
}