import 'package:checklist/models/colors.dart';
import 'package:checklist/screens/home.dart';
import 'package:checklist/screens/sign_in.dart';
import 'package:checklist/widgets/textfield.dart';
import 'package:flutter/material.dart';

import '../widgets/navigate.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: dg,
                    fontSize: 35,
                  ),
                ),
                Text(
                  'Signup to',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: dg,
                    fontSize: 35,
                  ),
                ),
                Text(
                  'get started',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: dg,
                    fontSize: 35,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomeTextField(hintTxt: 'Name'),
                const SizedBox(
                  height: 13,
                ),
                CustomeTextField(hintTxt: 'Email Addres'),
                const SizedBox(
                  height: 13,
                ),
                TextField(
                  obscureText: true,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(0, 242, 236, 236), width: 3),
                      ),
                      fillColor: lg,
                      filled: true),
                ),
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 65,
                        width: 350,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: dg,
                              shape: const StadiumBorder(),
                              // RoundedRectangleBorder(
                              //     borderRadius: BorderRadius.circular(10))
                            ),
                            onPressed: () {
                              navigateAndFinish(context, const Home());
                            },
                            child: Text(
                              'GET STARTED',
                              style: TextStyle(
                                color: w,
                                fontSize: 30,
                              ),
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 30,
                          ),
                          const Text(
                            'ALEADY HAVE AN ACCOUNT?',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          TextButton(
                            child: Text('Sign In',
                                style: TextStyle(fontSize: 20, color: dg)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SignIn()));
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
