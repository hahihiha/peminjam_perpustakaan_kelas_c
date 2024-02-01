import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/add_peminjaman_controller.dart';
import 'package:date_time_picker/date_time_picker.dart';

class AddPeminjamanView extends GetView<AddPeminjamanController> {
  const AddPeminjamanView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${Get.parameters['judul']}',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF0CBD63),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        color: Colors.white,
        child: Center(
          child: Form(
              key: controller.formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: controller.pinjamController,
                    decoration: InputDecoration(
                      labelText: "Tanggal Pinjam",
                      hintText: "Masukkan Tanggal Pinjam",
                      prefixIcon: Icon(Icons.event),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF0CBD63)),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF0CBD63)),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    validator: (value) {
                      if (value!.length < 2) {
                        return "Tanggal pinjam tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    controller: controller.kembaliController,
                    decoration: InputDecoration(
                      labelText: "Tanggal Kembali",
                      hintText: "Masukkan Tanggal Kembali",
                      prefixIcon: Icon(Icons.event),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF0CBD63)),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF0CBD63)),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    validator: (value) {
                      if (value!.length < 2) {
                        return "Tanggal kembali tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 32),
                  Obx(
                    () => controller.loading.value
                        ? CircularProgressIndicator()
                        : ElevatedButton(
                            onPressed: () {
                              controller.pinjam();
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF0CBD63),
                              padding: EdgeInsets.symmetric(
                                horizontal: 40.0, // Increase horizontal padding
                                vertical: 12.0,
                              ),
                            ),
                            child: Text(
                              "Kirim",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
