import 'package:get/get.dart';
import 'package:router_outlet/app/modules/root/bindings/root_binding.dart';
import 'package:router_outlet/app/modules/root/views/root_view.dart';
import '../modules/first/bindings/first_binding.dart';
import '../modules/first/views/first_view.dart';
import '../modules/second/bindings/second_binding.dart';
import '../modules/second/views/second_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ROOT;

  static final routes = [
    GetPage(
      name: _Paths.ROOT,
      page: () => const RootView(),
      binding: RootBinding(),
      participatesInRootNavigator: true,
      preventDuplicates: true,
      children: [
        GetPage(
          name: _Paths.FIRST,
          page: () => FirstView(),
          binding: FirstBinding(),
        ),
        GetPage(
          name: _Paths.SECOND,
          page: () => SecondView(),
          binding: SecondBinding(),
        ),
      ],
    ),
  ];
}
