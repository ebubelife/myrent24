import 'package:rent24/presentation/splash_screen/splash_screen.dart';
import 'package:rent24/presentation/splash_screen/binding/splash_binding.dart';
import 'package:rent24/presentation/splash_light_screen/splash_light_screen.dart';
import 'package:rent24/presentation/splash_light_screen/binding/splash_light_binding.dart';
import 'package:rent24/presentation/onboard_screen/onboard_screen.dart';
import 'package:rent24/presentation/onboard_screen/binding/onboard_binding.dart';
import 'package:rent24/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:rent24/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:rent24/presentation/login_screen/login_screen.dart';
import 'package:rent24/presentation/login_screen/binding/login_binding.dart';
import 'package:rent24/presentation/password_reset_screen/password_reset_screen.dart';
import 'package:rent24/presentation/password_reset_screen/binding/password_reset_binding.dart';
import 'package:rent24/presentation/confirm_reset_screen/confirm_reset_screen.dart';
import 'package:rent24/presentation/confirm_reset_screen/binding/confirm_reset_binding.dart';
import 'package:rent24/presentation/confirm_reset_one_screen/confirm_reset_one_screen.dart';
import 'package:rent24/presentation/confirm_reset_one_screen/binding/confirm_reset_one_binding.dart';
import 'package:rent24/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:rent24/presentation/reset_password_screen/binding/reset_password_binding.dart';
import 'package:rent24/presentation/home_page_screen/home_page_screen.dart';
import 'package:rent24/presentation/home_page_screen/binding/home_page_binding.dart';
import 'package:rent24/presentation/call_to_action_one_screen/call_to_action_one_screen.dart';
import 'package:rent24/presentation/call_to_action_one_screen/binding/call_to_action_one_binding.dart';
import 'package:rent24/presentation/call_to_action_screen/call_to_action_screen.dart';
import 'package:rent24/presentation/call_to_action_screen/binding/call_to_action_binding.dart';
import 'package:rent24/presentation/call_to_action_three_screen/call_to_action_three_screen.dart';
import 'package:rent24/presentation/call_to_action_three_screen/binding/call_to_action_three_binding.dart';
import 'package:rent24/presentation/call_to_action_two_screen/call_to_action_two_screen.dart';
import 'package:rent24/presentation/call_to_action_two_screen/binding/call_to_action_two_binding.dart';
import 'package:rent24/presentation/notification_one_container_screen/notification_one_container_screen.dart';
import 'package:rent24/presentation/notification_one_container_screen/binding/notification_one_container_binding.dart';
import 'package:rent24/presentation/review_screen/review_screen.dart';
import 'package:rent24/presentation/review_screen/binding/review_binding.dart';
import 'package:rent24/presentation/chat_screen/chat_screen.dart';
import 'package:rent24/presentation/chat_screen/binding/chat_binding.dart';
import 'package:rent24/presentation/chat_one_screen/chat_one_screen.dart';
import 'package:rent24/presentation/chat_one_screen/binding/chat_one_binding.dart';
import 'package:rent24/presentation/history_screen/history_screen.dart';
import 'package:rent24/presentation/history_screen/binding/history_binding.dart';
import 'package:rent24/presentation/notification_screen/notification_screen.dart';
import 'package:rent24/presentation/notification_screen/binding/notification_binding.dart';
import 'package:rent24/presentation/support_screen/support_screen.dart';
import 'package:rent24/presentation/support_screen/binding/support_binding.dart';
import 'package:rent24/presentation/settings_screen/settings_screen.dart';
import 'package:rent24/presentation/settings_screen/binding/settings_binding.dart';
import 'package:rent24/presentation/profile_one_screen/profile_one_screen.dart';
import 'package:rent24/presentation/profile_one_screen/binding/profile_one_binding.dart';
import 'package:rent24/presentation/profile_screen/profile_screen.dart';
import 'package:rent24/presentation/profile_screen/binding/profile_binding.dart';
import 'package:rent24/presentation/face_reconginition_screen/face_reconginition_screen.dart';

import 'package:rent24/presentation/face_scan_screen/face_scan_screen.dart';

import 'package:rent24/presentation/face_completed_screen/face_completed_screen.dart';
import 'package:rent24/presentation/face_completed_screen/binding/face_completed_binding.dart';
import 'package:rent24/presentation/ride_screen/ride_screen.dart';
import 'package:rent24/presentation/ride_screen/binding/ride_binding.dart';
import 'package:rent24/presentation/location_screen/location_screen.dart';
import 'package:rent24/presentation/location_screen/binding/location_binding.dart';
import 'package:rent24/presentation/select_cab_two_screen/select_cab_two_screen.dart';
import 'package:rent24/presentation/select_cab_two_screen/binding/select_cab_two_binding.dart';
import 'package:rent24/presentation/select_cab_one_screen/select_cab_one_screen.dart';
import 'package:rent24/presentation/select_cab_one_screen/binding/select_cab_one_binding.dart';
import 'package:rent24/presentation/card_screen/card_screen.dart';
import 'package:rent24/presentation/card_screen/binding/card_binding.dart';
import 'package:rent24/presentation/e_receipt_screen/e_receipt_screen.dart';
import 'package:rent24/presentation/e_receipt_screen/binding/e_receipt_binding.dart';
import 'package:rent24/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:rent24/presentation/dashboard_screen/binding/dashboard_binding.dart';
import 'package:rent24/presentation/new_lsiting_screen/new_lsiting_screen.dart';

import 'package:rent24/presentation/new_lsiting_one_screen/new_lsiting_one_screen.dart';

import 'package:rent24/presentation/transaction_history_screen/transaction_history_screen.dart';
import 'package:rent24/presentation/transaction_history_screen/binding/transaction_history_binding.dart';
import 'package:rent24/presentation/transaction_history_one_screen/transaction_history_one_screen.dart';
import 'package:rent24/presentation/transaction_history_one_screen/binding/transaction_history_one_binding.dart';
import 'package:rent24/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:rent24/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

import '../presentation/notification_one_page/notification_one_page.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String splashLightScreen = '/splash_light_screen';

  static const String onboardScreen = '/onboard_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String loginScreen = '/login_screen';

  static const String passwordResetScreen = '/password_reset_screen';

  static const String confirmResetScreen = '/confirm_reset_screen';

  static const String confirmResetOneScreen = '/confirm_reset_one_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String homePageScreen = '/home_page_screen';

  static const String callToActionOneScreen = '/call_to_action_one_screen';

  static const String callToActionScreen = '/call_to_action_screen';

  static const String callToActionThreeScreen = '/call_to_action_three_screen';

  static const String callToActionTwoScreen = '/call_to_action_two_screen';

  static const String notificationOnePage = '/notification_one_page';

  static const String notificationOneContainerScreen =
      '/notification_one_container_screen';

  static const String reviewScreen = '/review_screen';

  static const String chatScreen = '/chat_screen';

  static const String chatOneScreen = '/chat_one_screen';

  static const String historyScreen = '/history_screen';

  static const String notificationScreen = '/notification_screen';

  static const String supportScreen = '/support_screen';

  static const String settingsScreen = '/settings_screen';

  static const String profileOneScreen = '/profile_one_screen';

  static const String profileScreen = '/profile_screen';

  static const String faceReconginitionScreen = '/face_reconginition_screen';

  static const String faceScanScreen = '/face_scan_screen';

  static const String faceCompletedScreen = '/face_completed_screen';

  static const String rideScreen = '/ride_screen';

  static const String locationScreen = '/location_screen';

  static const String selectCabTwoScreen = '/select_cab_two_screen';

  static const String selectCabOneScreen = '/select_cab_one_screen';

  static const String cardScreen = '/card_screen';

  static const String eReceiptScreen = '/e_receipt_screen';

  static const String dashboardScreen = '/dashboard_screen';

  static const String newLsitingScreen = '/new_lsiting_screen';

  static const String newLsitingOneScreen = '/new_lsiting_one_screen';

  static const String transactionHistoryScreen = '/transaction_history_screen';

  static const String transactionHistoryOneScreen =
      '/transaction_history_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: splashLightScreen,
      page: () => SplashLightScreen(),
      bindings: [
        SplashLightBinding(),
      ],
    ),
    GetPage(
      name: onboardScreen,
      page: () => OnboardScreen(),
      bindings: [
        OnboardBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: passwordResetScreen,
      page: () => PasswordResetScreen(),
      bindings: [
        PasswordResetBinding(),
      ],
    ),
    GetPage(
      name: confirmResetScreen,
      page: () => ConfirmResetScreen(),
      bindings: [
        ConfirmResetBinding(),
      ],
    ),
    GetPage(
      name: confirmResetOneScreen,
      page: () => ConfirmResetOneScreen(),
      bindings: [
        ConfirmResetOneBinding(),
      ],
    ),
    GetPage(
      name: resetPasswordScreen,
      page: () => ResetPasswordScreen(),
      bindings: [
        ResetPasswordBinding(),
      ],
    ),
    GetPage(
      name: homePageScreen,
      page: () => HomePageScreen(),
      bindings: [
        HomePageBinding(),
      ],
    ),
    GetPage(
      name: callToActionOneScreen,
      page: () => CallToActionOneScreen(),
      bindings: [
        CallToActionOneBinding(),
      ],
    ),
    GetPage(
      name: callToActionScreen,
      page: () => CallToActionScreen(),
      bindings: [
        CallToActionBinding(),
      ],
    ),
    GetPage(
      name: callToActionThreeScreen,
      page: () => CallToActionThreeScreen(),
      bindings: [
        CallToActionThreeBinding(),
      ],
    ),
    GetPage(
      name: callToActionTwoScreen,
      page: () => CallToActionTwoScreen(),
      bindings: [
        CallToActionTwoBinding(),
      ],
    ),
    GetPage(
      name: notificationOneContainerScreen,
      page: () => NotificationOneContainerScreen(),
      bindings: [
        NotificationOneContainerBinding(),
      ],
    ),
    GetPage(
      name: reviewScreen,
      page: () => ReviewScreen(),
      bindings: [
        ReviewBinding(),
      ],
    ),
    GetPage(
      name: chatScreen,
      page: () => ChatScreen(),
      bindings: [
        ChatBinding(),
      ],
    ),
    GetPage(
      name: chatOneScreen,
      page: () => ChatOneScreen(),
      bindings: [
        ChatOneBinding(),
      ],
    ),
    GetPage(
      name: historyScreen,
      page: () => HistoryScreen(),
      bindings: [
        HistoryBinding(),
      ],
    ),
    GetPage(
      name: notificationScreen,
      page: () => NotificationScreen(),
      bindings: [
        NotificationBinding(),
      ],
    ),
    GetPage(
      name: notificationOnePage,
      page: () => NotificationOnePage(),
      bindings: [
        NotificationBinding(),
      ],
    ),
    GetPage(
      name: supportScreen,
      page: () => SupportScreen(),
      bindings: [
        SupportBinding(),
      ],
    ),
    GetPage(
      name: settingsScreen,
      page: () => SettingsScreen(),
      bindings: [
        SettingsBinding(),
      ],
    ),
    GetPage(
      name: profileOneScreen,
      page: () => ProfileOneScreen(),
      bindings: [
        ProfileOneBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: faceCompletedScreen,
      page: () => FaceCompletedScreen(),
      bindings: [
        FaceCompletedBinding(),
      ],
    ),
    GetPage(
      name: rideScreen,
      page: () => RideScreen(),
      bindings: [
        RideBinding(),
      ],
    ),
    GetPage(
      name: locationScreen,
      page: () => LocationScreen(),
      bindings: [
        LocationBinding(),
      ],
    ),
    GetPage(
      name: selectCabTwoScreen,
      page: () => SelectCabTwoScreen(),
      bindings: [
        SelectCabTwoBinding(),
      ],
    ),
    GetPage(
      name: selectCabOneScreen,
      page: () => SelectCabOneScreen(),
      bindings: [
        SelectCabOneBinding(),
      ],
    ),
    GetPage(
      name: cardScreen,
      page: () => CardScreen(),
      bindings: [
        CardBinding(),
      ],
    ),
    GetPage(
      name: eReceiptScreen,
      page: () => EReceiptScreen(),
      bindings: [
        EReceiptBinding(),
      ],
    ),
    GetPage(
      name: dashboardScreen,
      page: () => DashboardScreen(),
      bindings: [
        DashboardBinding(),
      ],
    ),
    GetPage(
      name: transactionHistoryScreen,
      page: () => TransactionHistoryScreen(),
      bindings: [
        TransactionHistoryBinding(),
      ],
    ),
    GetPage(
      name: transactionHistoryOneScreen,
      page: () => TransactionHistoryOneScreen(),
      bindings: [
        TransactionHistoryOneBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashLightScreen(),
      bindings: [
        SplashLightBinding(),
      ],
    )
  ];
}
