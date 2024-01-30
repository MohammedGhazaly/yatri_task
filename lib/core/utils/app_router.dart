import 'package:flutter/cupertino.dart';
import 'package:yatri_car_task/features/passenger_details/view/passenger_details_view.dart';
import 'package:yatri_car_task/features/payment/view/payment_view.dart';

class AppRoutes {
  static const String passengerInformationRoute = "passenger-information-route";
  static const String paymentRoute = "payment-route";
}

class RouteGenerator {
  static Route<dynamic> getRoutes(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AppRoutes.passengerInformationRoute:
        return CupertinoPageRoute(
            builder: (context) => const PassengerDetailsView());
      case AppRoutes.paymentRoute:
        return CupertinoPageRoute(builder: (context) => const PaymentView());
      default:
        return CupertinoPageRoute(builder: (context) => const SizedBox());
    }
  }
}
