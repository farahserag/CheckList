import 'package:checklist/models/colors.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget CustomeTextField({
  String? hintTxt,
  dynamic prefixIcon,
}) =>
    TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: hintTxt,
          prefixIcon: prefixIcon,
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
    );
