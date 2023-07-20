import 'package:gestion_stock/app/routes.dart';
import 'package:gestion_stock/ui/screens/dashboard/dashboard.screen.dart';
import 'package:gestion_stock/ui/screens/login/login.screens.dart';
import 'package:get/get.dart';

import '../ui/screens/splash/splash.screen.dart';

class AppRouting {
  static final List<GetPage> appRoutes = [
    GetPage(
      name: Routes.splash,
      page: () => const SplashScreen(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 350),
    ),
    GetPage(
      name: Routes.dashboard,
      page: () => const DashboardScreen(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 350),
    ),
    GetPage(
      name: Routes.login,
      page: () => const LoginScreen(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 350),
    ),
  ];
}
