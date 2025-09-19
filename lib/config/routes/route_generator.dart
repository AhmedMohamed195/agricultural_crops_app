import 'package:flutter/material.dart';
import 'package:agricultural_crops_app/features/basket/presentation/screens/basket_screen_content.dart';
import 'package:agricultural_crops_app/features/basket/presentation/screens/basket_screen_four.dart';
import 'package:agricultural_crops_app/features/basket/presentation/screens/basket_screen_one.dart';
import 'package:agricultural_crops_app/features/basket/presentation/screens/basket_screen_three.dart';
import 'package:agricultural_crops_app/features/basket/presentation/screens/basket_screen_two.dart';
import 'package:agricultural_crops_app/features/basket/presentation/screens/submit_application_screen.dart';
import 'package:agricultural_crops_app/features/home/presentation/screen/home_screen.dart';
import 'package:agricultural_crops_app/features/categorie_details/presentation/screen/categories_details_screen.dart';
import 'package:agricultural_crops_app/features/main_layout/presentation/screens/main_layout_screen.dart';
import 'package:agricultural_crops_app/features/on_boarding/presentation/screen/on_boarding_screen.dart';
import 'package:agricultural_crops_app/features/product_detail/presentation/screens/product_details_screen.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/auth/presentation/screens/register_screen.dart';
import '../../features/auth/presentation/screens/verification_screen.dart';
import 'app_routes.dart';

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    // final args = routeSettings.arguments;
    switch (routeSettings.name) {
      case AppRoutes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case AppRoutes.verificationScreen:
        return MaterialPageRoute(builder: (_) => const VerificationScreen());
      case AppRoutes.registerScreen:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case AppRoutes.mainLayoutScreen:
        return MaterialPageRoute(builder: (_) => const MainLayoutScreen());

      case AppRoutes.productDetailScreen:
        return MaterialPageRoute(builder: (_) => const ProductDetailScreen());
      case AppRoutes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case AppRoutes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case AppRoutes.categoriesDetailsScreen:
        return MaterialPageRoute(
          builder: (_) => const CategoriesDetailsScreen(),
        );

      case AppRoutes.basketscreenone:
        return MaterialPageRoute(builder: (_) => const BasketScreenOne());

      case AppRoutes.basketscreentwo:
        return MaterialPageRoute(builder: (_) => const BasketScreenTwo());
      case AppRoutes.basketscreenthree:
        return MaterialPageRoute(builder: (_) => const BasketScreenThree());
      case AppRoutes.submitapplicationscreen:
        return MaterialPageRoute(
          builder: (_) => const SubmitApplicationScreen(),
        );
      case AppRoutes.basketscreencontent:
        return MaterialPageRoute(builder: (_) => const BasketScreenContent());
      case AppRoutes.basketscreenfour:
        return MaterialPageRoute(builder: (_) => const BasketScreenFour());

      default:
        return _unDefinedRoute();
    }
  }

  static Route<dynamic> _unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) =>
          const Scaffold(body: Center(child: Text('un defined route!!'))),
    );
  }
}
