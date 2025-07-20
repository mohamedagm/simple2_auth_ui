import 'package:flutter/material.dart';
import 'package:simple2_auth_ui/widgets/custom_text_field.dart';
import 'package:simple2_auth_ui/func/elevated_b_style.dart';
import 'package:simple2_auth_ui/views/otp_view.dart';
import 'package:simple2_auth_ui/utils/styles.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  bool visible = false;

  @override
  void dispose() {
    phoneController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: AlignmentDirectional.bottomCenter,
        child: Container(
          height: MediaQuery.of(context).size.height * 2 / 3 - 50,
          decoration: BoxDecoration(
            color: Styles.kPrimaryColor,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 10),
                    Text('أهلا بك نحن سعداء بعودتك', style: Styles.kLoginTitle),
                    Text(
                      'من فضلك قم بتسجيل الدخول',
                      style: Styles.kLoginSubtitle,
                    ),
                    SizedBox(height: 20),
                    CustomTextField(
                      hintText: 'رقم الهاتف',
                      controller: phoneController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'This field is required';
                        } else if (value.length < 11) {
                          return 'invalid number';
                        }
                        return null;
                      },
                      sicon: Icons.phone,
                    ),
                    SizedBox(height: 10),
                    CustomTextField(
                      hintText: 'كلمة المرور',
                      controller: passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'This field is required';
                        } else if (value.length <= 6) {
                          return 'very short at least 7';
                        }
                        return null;
                      },
                      sicon: Icons.password,
                      visible: visible,
                      picon: IconButton(
                        onPressed: () {
                          setState(() {
                            visible = !visible;
                            // visible ? visible = false : visible = true;
                          });
                        },
                        icon:
                            visible
                                ? Icon(Icons.visibility_off)
                                : Icon(Icons.visibility),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'هل نسيت كلمة المرور ؟',
                          style: Styles.kForgotPassword,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      style: elevatedBstyle(context),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          phoneController.clear();
                          passwordController.clear();
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => OtpView()),
                          );
                        }
                      },
                      child: Text('تسجيل الدخول', style: Styles.kButtonText),
                    ),

                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("ليس لديك حساب ؟", style: Styles.kSignUpHint),
                          TextButton(
                            onPressed: () {
                              // Navigator.of(context).push(
                              //   MaterialPageRoute(
                              //     builder: (context) => RegisterView(),
                              //   ),
                              // );
                            },
                            child: Text(
                              'انشاء حساب',
                              style: Styles.kSignUpLink,
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
    );
  }
}
