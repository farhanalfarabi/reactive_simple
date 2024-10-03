import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reactive_simple/controller/home_controller.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final MyC = Get.put(HomeController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //! Ini untuk reactive
            // Obx(
            //   () => Text(
            //     "${MyC.data.value}",
            //     style: TextStyle(fontSize: 30),
            //   ),
            // ),

            //!ini untuk simple
            GetBuilder<HomeController>(
              builder: (controller) => Text("${controller.data}"),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                MyC.tambah();
              },
              child: Text("Tambah Data"),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                MyC.refreshHalaman();
              },
              child: Text("Refresh Halaman"),
            ),
          ],
        ),
      ),
    );
  }
}
