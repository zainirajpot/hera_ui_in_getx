import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hera_ui_in_getx/Hera_Lock_page/hera_lock_page.dart';
import 'package:hera_ui_in_getx/New%20Password%20Screen/renew_password_scren.dart';

class HeraEmilsPage extends StatelessWidget {
  const HeraEmilsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: Colors.transparent,

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
          Padding(
            padding: const EdgeInsets.only(
              top: 43,
              right: 95,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () => Get.off(const HeraLockPage()),
                  icon: const Icon(
                    Icons.arrow_back,
                  ),
                ),
                const Text(
                  'VERIFY YOUR EMAIL',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          // SizedBox(height: height*0.3,),
          Center(
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
                child: SingleChildScrollView(
                  child: Column(
                    //  mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(child: Image.asset('images/lockp.png')),
                      const Center(
                        child: Text(
                          '''Please enter the 6 digit code send to 
           zainirajpot77@gmail.com''',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.07,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: height * 0.05,
                                width: width * 0.09,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4)),
                                  color: Colors.white,
                                ),
                                child: const Center(
                                  child: Text('0'),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  height:
                                      3, // Set the height of the bottom border
                                  color: Colors
                                      .orange, // Set the color of the bottom border
                                ),
                              ),
                            ],
                          ),
                          Stack(
                            children: [
                              Container(
                                height: height * 0.05,
                                width: width * 0.09,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4)),
                                  color: Colors.white,
                                ),
                                child: const Center(
                                  child: Text('0'),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  height:
                                      3, // Set the height of the bottom border
                                  color: Colors
                                      .orange, // Set the color of the bottom border
                                ),
                              ),
                            ],
                          ),
                          Stack(
                            children: [
                              Container(
                                height: height * 0.05,
                                width: width * 0.09,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4)),
                                  color: Colors.white,
                                ),
                                child: const Center(
                                  child: Text('0'),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  height:
                                      3, // Set the height of the bottom border
                                  color: Colors
                                      .orange, // Set the color of the bottom border
                                ),
                              ),
                            ],
                          ),
                          Stack(
                            children: [
                              Container(
                                height: height * 0.05,
                                width: width * 0.09,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4)),
                                  color: Colors.white,
                                ),
                                child: const Center(
                                  child: Text('0'),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  height:
                                      3, // Set the height of the bottom border
                                  color: Colors
                                      .orange, // Set the color of the bottom border
                                ),
                              ),
                            ],
                          ),
                          Stack(
                            children: [
                              Container(
                                height: height * 0.05,
                                width: width * 0.09,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4)),
                                  color: Colors.white,
                                ),
                                child: const Center(
                                  child: Text('0'),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  height:
                                      3, // Set the height of the bottom border
                                  color: Colors
                                      .orange, // Set the color of the bottom border
                                ),
                              ),
                            ],
                          ),
                          Stack(
                            children: [
                              Container(
                                height: height * 0.05,
                                width: width * 0.09,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4)),
                                  color: Colors.white,
                                ),
                                child: const Center(
                                  child: Text('0'),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  height:
                                      3, // Set the height of the bottom border
                                  color: Colors
                                      .orange, // Set the color of the bottom border
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.05,
                      ),
                      const Center(
                        child: Text(
                          'Resend Code',
                          style: TextStyle(
                            color: Colors.white,
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
                          onPressed: () => Get.off(const HeraUpdatePassword()),
                          color: Colors.orange,
                          child: const Text(
                            'VERIFY',
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
        ],
      ),
    );
  }
}
