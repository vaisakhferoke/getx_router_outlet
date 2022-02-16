import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/second_controller.dart';

class SecondView extends GetView<SecondController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SecondView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SecondView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
