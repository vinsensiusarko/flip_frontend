import 'package:flip_frontend/screen/account/account_screen.dart';
import 'package:flip_frontend/screen/bottom_navigation.dart';
import 'package:flip_frontend/screen/home/home_screen.dart';
import 'package:flip_frontend/screen/transaction/transactions_screen.dart';
import 'package:flip_frontend/widget/custom_loading.dart';
import 'package:flutter/cupertino.dart';
import 'package:page_transition/page_transition.dart';

import '../screen/help/help_screen.dart';
import '../screen/splash/splash_screen.dart';
import '../screen/transfer/transfer_screen.dart';

Route<dynamic>? routes(settings) {
  switch (settings.name) {
    case '/':
      return PageTransition(
        child: const SplashScreen(),
        type: PageTransitionType.rightToLeft,
        settings: settings
      );
    case '/home':
      return PageTransition(
          child: const HomeScreen(),
          type: PageTransitionType.fade,
          settings: settings
      );
    case '/bottomNavigation':
      return PageTransition(
          child: const BottomNavigation(),
          type: PageTransitionType.fade,
          settings: settings
      );
    case '/transactions':
      return PageTransition(
          child: const TransactionsScreen(),
          type: PageTransitionType.fade,
          settings: settings
      );
    case '/transfer':
      return PageTransition(
          child: const TransferScreen(),
          type: PageTransitionType.fade,
          settings: settings
      );
    case '/help':
      return PageTransition(
          child: const HelpScreen(),
          type: PageTransitionType.fade,
          settings: settings
      );
    case '/account':
      return PageTransition(
          child: const AccountScreen(),
          type: PageTransitionType.fade,
          settings: settings
      );
    case '/loading':
      return PageTransition(
          child: const CustomLoading(),
          type: PageTransitionType.bottomToTop,
          settings: settings
      );
    default:
      return null;
  }
}