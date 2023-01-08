import 'package:checklist/models/colors.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget CustomContainer({
  String? text,
  // ignore: unnecessary_question_mark
  dynamic? color,
  dynamic icon,
}) =>
    Container(
      width: 150,
      height: 300,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25), color: Colors.white10),
            child: Icon(
              icon!,
              color: w,
              size: 33,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text!,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 23),
          )
        ],
      ),
    );
    // Container(
    //   width: 150,
    //   height: 300,
    //   decoration: BoxDecoration(
    //     color: color,
    //     // color: Colors.blue[400],
    //     borderRadius: BorderRadius.circular(25),
    //   ),
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       Image.asset(
    //         image!,
    //         width: 30,
    //         height: 30,
    //       ),
    //       Text(
    //         text!,
    //         style: const TextStyle(
    //           fontSize: 25,
    //           color: Colors.white,
    //         ),
    //       ),
    //     ],
    //   ),
    // );
