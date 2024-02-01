import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'RegisterView',
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
                    controller: controller.namaController,
                    decoration: InputDecoration(
                      labelText: "Nama",
                      hintText: "Masukkan Nama",
                      prefixIcon: Icon(Icons.person),
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
                        return "Nama tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    controller: controller.usernameController,
                    decoration: InputDecoration(
                      labelText: "Username",
                      hintText: "Masukkan Username",
                      prefixIcon: Icon(Icons.code),
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
                        return "Username tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    controller: controller.telpController,
                    decoration: InputDecoration(
                      labelText: "No Telepon",
                      hintText: "Masukkan No Telepon",
                      prefixIcon: Icon(Icons.phone),
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
                        return "No Telepon tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    controller: controller.alamatController,
                    decoration: InputDecoration(
                      labelText: "Alamat",
                      hintText: "Masukkan Alamat",
                      prefixIcon: Icon(Icons.location_on),
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
                        return "Alamat tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    controller: controller.passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Masukkan Password",
                      prefixIcon: Icon(Icons.lock),
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
                        return "Password tidak boleh kosong";
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
                              controller.addacount();
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF0CBD63),
                              padding: EdgeInsets.symmetric(
                                horizontal: 40.0,
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
                  SizedBox(height: 50),
                  RichText(
                    text: TextSpan(
                      text: 'Sudah punya akun? ',
                      style: DefaultTextStyle.of(context).style.copyWith(
                            fontSize: 16.0,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                          ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Login!',
                          style: TextStyle(
                            color: Color(0xFF0CBD63),
                            fontSize: 16.0,
                            decoration: TextDecoration.none,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.toNamed(Routes.LOGIN);
                            },
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
