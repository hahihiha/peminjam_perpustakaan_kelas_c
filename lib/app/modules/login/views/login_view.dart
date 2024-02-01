import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'LoginView',
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
                  controller: controller.usernameController,
                  decoration: InputDecoration(
                    labelText: "Username",
                    hintText: "Masukkan Username",
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
                      return "Username tidak boleh kosong";
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
                      ? CircularProgressIndicator(
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Color(0xFF0CBD63)),
                        )
                      : ElevatedButton(
                          onPressed: () {
                            controller.login();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF0CBD63),
                            padding: EdgeInsets.symmetric(
                              horizontal: 40.0,
                              vertical: 12.0,
                            ),
                          ),
                          child: Text(
                            "Login",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                ),
                SizedBox(height: 50),
                RichText(
                  text: TextSpan(
                    text: 'Belum punya akun? ',
                    style: DefaultTextStyle.of(context).style.copyWith(
                          fontSize: 16.0,
                          color: Colors.black,
                          decoration: TextDecoration.none,
                        ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Daftar!',
                        style: TextStyle(
                          color: Color(0xFF0CBD63),
                          fontSize: 16.0,
                          decoration: TextDecoration.none,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.toNamed(Routes.REGISTER);
                          },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
