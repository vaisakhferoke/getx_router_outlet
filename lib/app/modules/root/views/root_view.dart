import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:router_outlet/app/routes/app_pages.dart';

import '../controllers/root_controller.dart';

class RootView extends GetView<RootController> {
  const RootView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(builder: (context, delegate, dfdff) {
      return Scaffold(
        body: GetRouterOutlet(
          initialRoute: Routes.FIRST,
          anchorRoute: Routes.SECOND,
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
    });
  }
}
