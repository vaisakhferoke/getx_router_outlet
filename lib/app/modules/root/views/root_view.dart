import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:router_outlet/app/routes/app_pages.dart';

import '../controllers/root_controller.dart';

class RootView extends GetView<RootController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RootView'),
        centerTitle: true,
      ),
      body: Center(
        child: InkWell(
          onTap: (){
            Get.toNamed(Routes.HOME);
          },
          child: Text(
            'Go Home',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
