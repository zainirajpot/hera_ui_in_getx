import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:hera_ui_in_getx/Controller_page/controller_functions.dart';
import 'package:hera_ui_in_getx/Hera_Lock_page/hera_lock_page.dart';
import 'package:hera_ui_in_getx/Hera_sign_up_page/hera_signUp_page.dart';

class HeraLoginPage extends GetView<FunctionsController> {
  const HeraLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              'images/airplane2.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 100, bottom: 25),
              child: Container(
                height: height * 0.8,
                width: width * 0.9,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(132, 85, 93, 101),
                      Color.fromARGB(108, 149, 88, 19)
                    ],
                  ),
                  borderRadius: BorderRadius.circular(100),
                  //color: const Color.fromARGB(135, 0, 0, 0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Center(
                          child: Column(
                            children: const [
                              Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 44,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Welcome Back to Hera',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.2,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 9,
                                bottom: 9,
                              ),
                              child: Text(
                                'Email',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            TextField(
                              autofocus: false,
                              cursorColor: Colors.black,
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.black,
                              ),
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Colors.grey,
                                ),
                                border: InputBorder.none,
                                hintText: 'Email',
                  
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding: EdgeInsets.only(
                                  left: 14.0,
                                  bottom: 6.0,
                                  top: 8.0,
                                ),
                                // focusedBorder: OutlineInputBorder(
                                //   borderSide: BorderSide(color: Colors.red),
                                //   borderRadius: BorderRadius.circular(10.0),
                                // ),
                                // enabledBorder: UnderlineInputBorder(
                                //   borderSide: BorderSide(color: Colors.amber),
                                //   borderRadius: BorderRadius.circular(10.0),
                                // ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 9,
                                bottom: 9,
                              ),
                              child: Text(
                                'Password',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            TextField(
                              obscureText: true,
                              autofocus: false,
                              cursorColor: Colors.black,
                              style: const TextStyle(
                                fontSize: 15.0,
                                color: Colors.black,
                              ),
                              decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.lock,
                                  color: Colors.grey,
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () => controller.changeIcon(),
                                  icon: Obx(
                                    () => Icon(
                                      controller.showIcon.value
                                          ? Icons.remove_red_eye_outlined
                                          : Icons.visibility_off_outlined,
                                      color: Colors.grey,
                                      size: 25,
                                    ),
                                  ),
                                ),
                                border: InputBorder.none,
                                hintText: 'Password',
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding: const EdgeInsets.only(
                                  left: 14.0,
                                  bottom: 6.0,
                                  top: 8.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 227,
                          ),
                          child: TextButton(
                            onPressed: () => Get.off(const HeraLockPage()),
                            child: const Text(
                              'Forget Password',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        MaterialButton(
                          height: height * 0.05,
                          minWidth: width * 0.8,
                          onPressed: () => Get.off(const SignUpPage()),
                          color: Colors.orange,
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 57),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'New to Hera? ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                              TextButton(
                                onPressed: () => Get.off(const SignUpPage()),
                                child: const Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.white,
                                    decorationStyle: TextDecorationStyle.solid,
                                    decorationThickness: 3,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
