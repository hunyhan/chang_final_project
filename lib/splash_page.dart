import 'package:flutter/material.dart';
import 'package:kkulkkeog/mainpage.dart';
import 'main.dart';
import 'onboarding_page.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  bool isOnboarded = prefs.getBool("isOnboarded") ?? false;
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => isOnboarded ? MainPage() : OnboardingPage(),
        )); //spalsh page finish -> onboarding change
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: const Color(0xff3F69FF),
                  child: Image.asset('assets/splash/visual.png'),
                ),
                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.10,
                      ),
                      SizedBox(
                        height: 250,
                        child: Image.asset('assets/splash/LOGO.png'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
