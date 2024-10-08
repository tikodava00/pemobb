import 'package:demo/app/modules/bayar/views/bayar_view.dart';
import 'package:demo/app/modules/daftar/views/daftar_view.dart';
import 'package:demo/app/modules/loading/views/loading_view.dart';
import 'package:demo/app/modules/booking/views/booking_view.dart';
import 'package:demo/app/modules/tiket/views/tiket_view.dart';
import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOADING;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DAFTAR,
      page: () => DaftarView(),
    ),
    GetPage(
      name: _Paths.LOADING,
      page: () => LoadingScreen(),
    ),
    GetPage(
      name: _Paths.BOOKING,
      page: () => BookingView(),
    ),
    GetPage(
      name: _Paths.TIKET,
      page: () => TiketView(),
    ),
    GetPage(
      name: _Paths.BAYAR,
      page: () => BayarView(),
    ),
  ];
}
