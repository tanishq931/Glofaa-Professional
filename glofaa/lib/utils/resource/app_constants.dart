//
//
// import 'package:get/get_rx/src/rx_types/rx_types.dart';
// import 'package:intl/intl.dart';
//
// class AppConstants {
//   static AppConstants? _instance;
//   static AppConstants get instance => _instance ??= AppConstants();
//   ///Mobil Language
//   String mobileLanguage = "en_Us";
//
//   ///default theme
//   String defaultTheme = "light";
//
//   /// live base url
//   // static const String adminUrl = 'http://172.105.41.132/widsin-dev/public/api/v1/'; // Live url
//  // static const String adminUrl = 'https://widsin.com/api/v1/';
//   static const String baseUrl = 'https://devapi.glofaa.com/api/v1/'; // Live url
//
//   /// firebase keys
//   String get  serverKey => "AAAA97Pkut0:APA91bG82twBxWlOxyRVP08C8Qbks8UhZFwneFol2GhbJEwHvxsveKxhVKX-7pWN313YflaaLZtEUau2TnYQmyS3bZCiFqvwZuqamnqv0iQ86mX0QlQ2zMJRrQO-ecc6YB9Isr-S8x22";
//
//
//   /// AUTH
//
//
//   ///profile
//
//
//   /// drawer
//
//
//
//   /// home
//
//   String get homeCategories => '${baseUrl}categories';
//
//
//   /// glofa profile
//
//
//   /// country code
//   static List<Map<String, dynamic>> states = [];
//   static Map<int, List<Map<String, dynamic>>> city = {};
//
//   /// currency
//   static final formatCurrency = NumberFormat.currency(locale: "hi_IN", symbol: "₹ ", decimalDigits: 2);
//   static amountFormat(double amount){
//     return AppConstants.formatCurrency.format(amount).toString();
//   }
//
//
//   /// App content
//   static RxString privacyPolicy = "".obs;
//   static RxString tramsAndCondition = "".obs;
//   static RxString aboutUs = "".obs;
//   static RxString cancellationPolicy = "".obs;
// }
