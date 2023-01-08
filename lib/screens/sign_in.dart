import 'package:checklist/models/colors.dart';
import 'package:checklist/screens/home.dart';
import 'package:checklist/screens/sign_up.dart';
import 'package:checklist/widgets/navigate.dart';
import 'package:checklist/widgets/textfield.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              onPressed: () {
                navigatTo(context, const SignUp());
              },
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: dg,
                size: 30,
              ))),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello Again!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: dg,
                    fontSize: 35,
                  ),
                ),
                Text(
                  'Welcome',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: dg,
                    fontSize: 35,
                  ),
                ),
                Text(
                  'back',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: dg,
                    fontSize: 35,
                  ),
                ),
                const SizedBox(
                  height: 45,
                ),
                CustomeTextField(hintTxt: 'Email Address'),
                const SizedBox(
                  height: 19,
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
                  height: 150,
                ),
                Center(
                  child: Container(
                    height: 65,
                    width: 350,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: dg,
                          shape: const StadiumBorder(),
                        ),
                        onPressed: () {
                          navigateAndFinish(context, const Home());
                        },
                        child: Text(
                          'LOG IN',
                          style: TextStyle(
                            color: w,
                            fontSize: 30,
                          ),
                        )),
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
