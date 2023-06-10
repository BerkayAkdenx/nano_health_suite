import 'package:app/core/routes/routes.dart';
import 'package:app/feature/detail/detail_page.dart';
import 'package:app/feature/login/login_page.dart';
import 'package:app/feature/products/products_page.dart';
import 'package:get/get.dart';

abstract class Pages {
  static List<GetPage> pages = [
    GetPage(
      name: Routes.LOGIN_PAGE,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: Routes.PRODUCTS_PAGE,
      page: () => const ProductsPage(),
    ),
    GetPage(
      name: Routes.DETAIL_PAGE,
      page: () => const DetailPage(),
    ),
  ];
}
