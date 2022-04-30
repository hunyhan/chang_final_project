import 'package:flutter/material.dart';

import 'main.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
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
            builder: (context) =>
                HomePage())); //spalsh page finish -> onboarding change
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color(0xff3F69FF),
            child: Image.asset('assets/splash/visual.png'),
          ),
          Positioned(
            bottom: 330,
            right: 60,
            child: Center(
              child: Container(
                width: 250,
                height: 250,
                child: Image.asset('assets/splash/LOGO.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
