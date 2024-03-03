import 'package:flutter/material.dart';
import 'package:tranzgoo/presentation/view/auth_view/create_account_screen.dart';
import 'package:tranzgoo/presentation/view/auth_view/login_screen.dart';
import 'package:tranzgoo/presentation/view/auth_view/register_screen.dart';
import 'package:tranzgoo/presentation/view/auth_view/splash_screen.dart';
import 'package:tranzgoo/presentation/view/auth_view/welcome_screen.dart';
import 'package:tranzgoo/presentation/view/home_view/base_screen.dart';
import 'package:tranzgoo/presentation/view/home_view/fund_account.dart';
import 'package:tranzgoo/presentation/view/home_view/home_screen.dart';
import 'package:tranzgoo/presentation/view/home_view/send_screen.dart';
import 'package:tranzgoo/presentation/view/payment/confirm_info_screen.dart';
import 'package:tranzgoo/presentation/view/services/airtime_view.dart';
import 'package:tranzgoo/presentation/view/services/data_view.dart';
import 'package:tranzgoo/presentation/view/payment/review_screen.dart';
import 'package:tranzgoo/presentation/view/payment/successful_screen.dart';
import 'package:tranzgoo/presentation/view/payment/bank_details_screen.dart';
import 'package:tranzgoo/presentation/view/services/airtime2cash_view.dart';

class AppRoutes {
  static const String splashView = '/splashView';
  static const String homeView = '/homeView';
  static const String registerView = '/registerView';
  static const String loginView = '/loginView';
  static const String welcomeView = '/welcomeView';
  static const String createAccountView = '/createAccountView';
  static const String baseView = '/baseView';
  static const String fundAccountView = '/fundAccountView';
  static const String sendView = '/sendView';
  static const String airTime = '/airTime';
  static const String dataView = '/dataView';
  static const String reView = '/reView';
  static const String successView = '/successView';
  static const String airtime2cashView = '/airtime2cashView';
  static const String bankdetailsView = '/bankdetailsView';
  static const String confirmView = '/confirmView';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      AppRoutes.splashView: (_) => const SplashScreen(),
      AppRoutes.homeView: (_) => const HomeScreen(),
      AppRoutes.registerView: (_) => const RegisterScreen(),
      AppRoutes.loginView: (_) => const LoginScreen(),
      AppRoutes.welcomeView: (_) => const WelcomeScreen(),
      AppRoutes.createAccountView: (_) => const CreateAccountScreen(),
      AppRoutes.baseView: (_) => const BaseView(),
      AppRoutes.fundAccountView: (_) => const FundAccount(),
      AppRoutes.sendView: (_) => const SendView(),
      AppRoutes.airTime: (_) => const AirTime(),
      AppRoutes.dataView: (_) => const DataView(),
      AppRoutes.reView: (_) => const ReView(),
      AppRoutes.successView: (_) => const SuccessView(),
      AppRoutes.airtime2cashView: (_) => const Airtime2cash(),
      AppRoutes.bankdetailsView: (_) => const BankDetails(),
      AppRoutes.confirmView: (_) => const ConfirmInfo(),
    };
  }
}
