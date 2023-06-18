import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hera_ui_in_getx/Hera_Lock_page/hera_lock_page.dart';

class HeraUpdatePassword extends StatelessWidget {
  const HeraUpdatePassword({super.key});

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
              top: 53,
              right: 95,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () =>Get.off(const HeraLockPage()),
                  icon: const Icon(
                    Icons.arrow_back,
                  ),
                ),

                const Text(
                  'CREAT NEW PASSWORD',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                // ShaderMask(
                //   shaderCallback: (bounds) => const LinearGradient(
                //     begin: Alignment.topLeft,
                //     end: Alignment.topRight,
                //     colors: [Colors.black, Colors.orange, Colors.grey],
                //   ).createShader(bounds),
                //   child: const Align(
                //     alignment: Alignment.topLeft,
                //     child: Text(
                //       'CREAT NEW PASSWORD',
                //       style: TextStyle(
                //         fontSize: 20.0,
                //         fontWeight: FontWeight.w700,
                //         color: Colors.white,
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: SingleChildScrollView(
              child: Center(
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
                            '''Your new password must be different  
        from previous used password ''',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.06,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8, bottom: 9),
                          child: Text(
                            'Password',
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
                              Icons.lock,
                              color: Colors.grey,
                            ),
                            suffixIcon: Icon(
                              Icons.visibility_off,
                              color: Colors.grey,
                            ),
                            border: InputBorder.none,
                            hintText: 'Password',
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
                          height: height * 0.03,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8,top: 22,bottom: 15 ),
                          child: Text(
                            'Confirm Password',
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
                              Icons.lock,
                              color: Colors.grey,
                            ),
                            suffixIcon: Icon(
                              Icons.visibility_off,
                              color: Colors.grey,
                            ),
                            border: InputBorder.none,
                            hintText: 'Password',
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
                          height: height * 0.1,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 22,
                          ),
                          child: MaterialButton(
                            height: height * 0.05,
                            minWidth: width * 0.7,
                            onPressed: () {},
                            // Get.off(const HeraUpdatePassword()),
                            color: Colors.orange,
                            child: const Text(
                              'Save',
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
