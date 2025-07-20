import 'package:flutter/material.dart';
import 'package:simple2_auth_ui/views/login_view.dart';
import 'package:simple2_auth_ui/utils/my_clipper.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                color: const Color(0xFF5E60CE),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.16,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  'دعم وتمكين لمستقبل\nأفضل لفئاتنا الخاصة',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 28,
                    color: Color(0xFFADE8F4),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),

        SizedBox(
          height: MediaQuery.of(context).size.height * 0.6,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Image.asset('assets/images/1.png'),
              ),
              Positioned(
                width: double.maxFinite,
                top: MediaQuery.of(context).size.height * 0.04,
                left: MediaQuery.of(context).size.width * 0.325,
                child: Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Image.asset('assets/images/2.png'),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.42,
                left: MediaQuery.of(context).size.width * 0.125,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width * 0.75,
                      MediaQuery.of(context).size.height * 0.065,
                    ),
                    backgroundColor: Color(0xffE23C64),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                      side: BorderSide(color: Colors.black),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoginView()),
                    );
                  },
                  child: Text(
                    'دعونا نبدأ',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
