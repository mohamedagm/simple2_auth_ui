import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Styles {
  static const Color kPrimaryColor = Color(0xff1181A6);
  ////////////
  static const TextStyle kLoginTitle = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle kLoginSubtitle = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w800,
    color: Colors.white,
  );

  static const TextStyle kForgotPassword = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  static const TextStyle kSignUpHint = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle kSignUpLink = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static const TextStyle kButtonText = TextStyle(
    fontSize: 20,
    color: Styles.kPrimaryColor,
    fontWeight: FontWeight.w800,
  );
  //otp
  static const TextStyle kOtpSubtitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );
}
