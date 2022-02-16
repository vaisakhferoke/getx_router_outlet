import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:router_outlet/app/modules/home/views/home_view.dart';
import 'package:router_outlet/app/modules/root/bindings/root_binding.dart';
import 'package:router_outlet/app/modules/root/views/root_view.dart';
import '../modules/first/bindings/first_binding.dart';
import '../modules/first/views/first_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/second/bindings/second_binding.dart';
import '../modules/second/views/second_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ROOT;

  static final routes = [
    GetPage(
        name: _Paths.ROOT,
        page: () =>  RootView(),
        binding: RootBinding(),
        participatesInRootNavigator: true,
        preventDuplicates: true,
        children: [
          GetPage(
              name: _Paths.HOME,
              page: () => GetRouterOutlet.builder(
               
                    builder: (context, delegate, currentRoute) {
                      return Scaffold(
                        body: GetRouterOutlet(
                          initialRoute: Routes.FIRST,
                          anchorRoute: Routes.HOME,
                          key: Get.nestedKey(Routes.HOME),
                        ),
                        bottomNavigationBar: Row(
                          children: [
                            TextButton(
                              onPressed: () {
                                delegate.toNamed(Routes.FIRST);
                              },
                              child: const Text("First"),
                            ),
                            TextButton(
                              onPressed: () {
                                delegate.toNamed(Routes.SECOND);
                              },
                              child: const Text("Second"),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
              participatesInRootNavigator: true,
              preventDuplicates: true,
              binding: HomeBinding(),
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
              ]),
        ]),
  ];
}
