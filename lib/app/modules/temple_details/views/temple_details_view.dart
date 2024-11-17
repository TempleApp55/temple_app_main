import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/temple_details_controller.dart';

class TempleDetailsView extends GetView<TempleDetailsController> {
  const TempleDetailsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TempleDetailsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TempleDetailsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
