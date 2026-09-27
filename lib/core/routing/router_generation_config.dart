

import 'package:bmi/features/home/presentation/view/bmi_calculator.dart';
import 'package:bmi/core/routing/app_routes.dart';
import 'package:bmi/features/home/presentation/view/result_screen.dart';
import 'package:go_router/go_router.dart';

class RouterGenerationConfig {
  static GoRouter goRouter =
      GoRouter(initialLocation: AppRoutes.bmiCalculator, routes: [

         GoRoute(
        path: AppRoutes.bmiCalculator,
        name: AppRoutes.bmiCalculator,
        builder: (context, state) => const BmiCalculator()),
    GoRoute(
        path: AppRoutes.resultScreen,
        name: AppRoutes.resultScreen,
        builder: (context, state) => const ResultScreen()),
   
  ]);
}
