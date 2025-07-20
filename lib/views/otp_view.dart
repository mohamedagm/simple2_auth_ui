import 'package:flutter/material.dart';
import 'package:simple2_auth_ui/func/elevated_b_style.dart';
import 'package:simple2_auth_ui/views/login_view.dart';
import 'package:simple2_auth_ui/widgets/otp_text_field.dart';
import 'package:simple2_auth_ui/utils/styles.dart';

class OtpView extends StatefulWidget {
  const OtpView({super.key});

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  final pinController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    pinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: AlignmentDirectional.bottomCenter,
        child: Container(
          height: MediaQuery.of(context).size.height * 2 / 3 - 50,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: Styles.kPrimaryColor,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: Column(
            children: [
              SizedBox(height: 10),
              Text(
                'أدخل رمز التحقق OTP',
                style: Styles.kLoginTitle,
                textDirection: TextDirection.rtl,
              ),
              Text(
                'لقد أرسلنا الكود الخاص بك الي 0000****00',
                style: Styles.kOtpSubtitle,
                textDirection: TextDirection.rtl,
              ),
              Text(
                'سينتهي هذا الكود في 00:30',
                style: Styles.kOtpSubtitle,
                textDirection: TextDirection.rtl,
              ),
              SizedBox(height: 10),

              OtpTextField(pinController: pinController),
              SizedBox(height: 40),
              ElevatedButton(
                style: elevatedBstyle(context),
                onPressed: () {},
                child: Text('تأكيد', style: Styles.kButtonText),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
