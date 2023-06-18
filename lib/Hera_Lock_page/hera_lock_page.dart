import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hera_ui_in_getx/Hera_Email_page/email_page.dart';

class HeraLockPage extends StatelessWidget {
  const HeraLockPage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
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
          SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
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
                    padding: const EdgeInsets.all(17),
                    child: Column(
                      //  mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(child: Image.asset('images/lockp.png')),
                        const Center(
                          child: Text(
                            '''Please enter your Email Address to receive verification 
                                               code''',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.06,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15, bottom: 15),
                          child: Text(
                            'Email Address',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const TextField(
                          obscureText: true,
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
                          ),
                        ),
                        SizedBox(
                          height: height * 0.2,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 22,
                          ),
                          child: MaterialButton(
                            height: height * 0.05,
                            minWidth: width * 0.7,
                            onPressed: () => Get.off(const HeraEmilsPage()),
                            color: Colors.orange,
                            child: const Text(
                              'Send',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                              ),
                            ),
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
