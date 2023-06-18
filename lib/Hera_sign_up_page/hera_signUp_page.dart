import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hera_ui_in_getx/Binding_Page/binding_class.dart';
import 'package:hera_ui_in_getx/Hera_Lock_page/hera_lock_page.dart';
import 'package:hera_ui_in_getx/Hera_UI_Pages/hera_login_page.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _dateController = TextEditingController();
  void _selectDate(BuildContext context) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      // Date picker configuration
    );

    if (selectedDate != null) {
      setState(() {
        _dateController.text =
            selectedDate.toString(); // Update the text field value
      });
    }
  }

  int groupValue = 0;
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
          //

          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Center(
              child: SingleChildScrollView(
                child: Container(
                  //  height: height ,
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
                    // color: const Color.fromARGB(135, 0, 0, 0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height * 0.06,
                        ),
                        Center(
                          child: Column(
                            children: const [
                              Text(
                                'SIGN UP',
                                style: TextStyle(
                                  fontSize: 34,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Welcome to Hera',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.07,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 9, bottom: 8),
                          child: Text(
                            'First name',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const TextField(
                          autofocus: false,
                          cursorColor: Colors.black,
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.grey,
                            ),
                            border: InputBorder.none,
                            hintText: 'Name',
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
                          padding: EdgeInsets.only(left: 9, bottom: 8),
                          child: Text(
                            'Last name',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const TextField(
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
                            border: InputBorder.none,
                            hintText: 'Last name',
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
                          padding: EdgeInsets.only(left: 9, bottom: 8),
                          child: Text(
                            'Email',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const TextField(
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
                          height: height * 0.03,
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
                          padding: EdgeInsets.only(left: 8, bottom: 9),
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
                          height: height * 0.03,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8, bottom: 9),
                          child: Text(
                            'Role',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        ExpansionTile(
                          title: const Text('Select Role'),
                          leading: const Icon(Icons.person_3_rounded),
                          backgroundColor: Colors.white,
                          collapsedBackgroundColor: Colors.white,
                          children: [
                             CustomRadioButton(
                              horizontal:true ,
                           
                           
                             enableShape:true,
                             height: 30 ,
                             
                           //   buttonColor: Theme.of(context).canvasColor,
                              buttonLables: const [
                                "Student",
                                "Parent/Teacher",
                              ],
                              buttonValues: const [
                                "STUDENT",
                                "TEACHER",
                              ],
                              radioButtonValue: (value) => print(value),
                              
                              selectedColor: Theme.of(context).colorScheme.secondary, unSelectedColor: Colors.black26,
                            ),
                                 
                          ],
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8, bottom: 9),
                          child: Text(
                            'Date of birth',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        TextField(
                          controller: _dateController,
                          autofocus: false,
                          cursorColor: Colors.black,
                          style: const TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            prefixIcon: GestureDetector(
                              onTap: () {
                                _selectDate(
                                    context); // Call the _selectDate function
                              },
                              child: const Icon(
                                Icons.calendar_today,
                                color: Colors.grey,
                              ),
                            ),
                            border: InputBorder.none,
                            hintText: 'Date of birth',
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: const EdgeInsets.only(
                              left: 14.0,
                              bottom: 6.0,
                              top: 8.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                          
                            Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Text(
                                'I agree to terms and condition',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: MaterialButton(
                            height: height * 0.05,
                            minWidth: width * 0.7,
                            onPressed: () => Get.off(const HeraLockPage()),
                            color: Colors.orange,
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Already have an account ?',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Get.off(
                                  const HeraLoginPage(),
                                  binding: HeraLoginPageBinding(),
                                );
                              },
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.white, // optional
                                  decorationThickness: 3, // optional
                                  decorationStyle: TextDecorationStyle.solid,
                                ),
                              ),
                            )
                          ],
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
