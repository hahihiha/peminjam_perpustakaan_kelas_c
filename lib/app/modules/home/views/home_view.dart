import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double buttonWidth = MediaQuery.of(context).size.width * 0.7;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'HomeView',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF0CBD63),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: buttonWidth,
              child: ElevatedButton(
                onPressed: () => Get.toNamed(Routes.BOOK),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF0CBD63),
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                child: Text(
                  "Buku",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: buttonWidth,
              child: ElevatedButton(
                onPressed: () => Get.toNamed(Routes.PEMINJAMAN),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF0CBD63),
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                child: Text(
                  "Peminjaman",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
