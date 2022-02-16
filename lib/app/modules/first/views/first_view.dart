import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/first_controller.dart';

class FirstView extends GetView<FirstController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FirstView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'FirstView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
