import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:kkulkkeog/main.dart';
import 'package:kkulkkeog/mainpage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int pageIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xff3F69FF),
      body: SafeArea(
        child: PageView(
          onPageChanged: (int index) {
            setState(() {
              pageIndex = index;
            });
          },
          controller: _pageController,
          children: [
            //1page
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Center(
                      child: Stack(
                        children: [
                          Image.asset('assets/onboarding1/bg.jpg'), //배경사진
                          Center(
                            child: Column(
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                ),
                                Image.asset(
                                  'assets/onboarding1/img.png', //물통 이미지
                                  height: 290,
                                ),
                              ],
                            ),
                          ),
                          SafeArea(
                            child: Center(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.6,
                                  ),
                                  Image.asset(
                                    'assets/onboarding1/title.jpg', //타이틀
                                    width: 200,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SafeArea(
                            child: Center(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.74,
                                  ),
                                  Image.asset(
                                    'assets/onboarding1/commend.jpg', // 안내
                                    width: 200,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                              ),
                              //상단 indicatordot
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Center(
                                    child: SmoothPageIndicator(
                                      controller: _pageController,
                                      count: 3,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.81,
                              ),
                              //하단 다음진행 버튼
                              Container(
                                color: const Color(0xff3F69FF),
                                height: 60,
                                width: double.infinity,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    TextButton(
                                      style: TextButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xff3F69FF),
                                        primary: Colors.white,
                                        textStyle: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                        //하단 버튼 터치영역
                                        minimumSize: Size(370, 60),
                                      ),
                                      child: const Text('다음'), //다음페이지로
                                      onPressed: () {
                                        _pageController.nextPage(
                                            duration:
                                                Duration(milliseconds: 500),
                                            curve: Curves.decelerate);
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //2page
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Center(
                      child: Stack(
                        children: [
                          Image.asset('assets/onboarding1/bg.jpg'), //배경이미지
                          Center(
                            child: Column(
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.2,
                                ),
                                Positioned(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: Image.asset(
                                    'assets/onboarding1/img2.png', //중단이미지
                                    height: MediaQuery.of(context).size.height *
                                        0.39,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SafeArea(
                            child: Center(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.61,
                                  ),
                                  Image.asset(
                                    'assets/onboarding1/title2.jpg', //타이틀
                                    width: 250,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SafeArea(
                            child: Center(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.74,
                                  ),
                                  Image.asset(
                                    'assets/onboarding1/commend2.jpg', //안내
                                    width: 230,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                              ),
                              //상단 indicatordot
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Center(
                                    child: SmoothPageIndicator(
                                      controller: _pageController,
                                      count: 3,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.81,
                              ),
                              //하단 다음진행 버튼
                              Container(
                                color: const Color(0xff3F69FF),
                                height: 60,
                                width: double.infinity,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    TextButton(
                                        style: TextButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xff3F69FF),
                                          primary: Colors.white,
                                          textStyle: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                          minimumSize: Size(370, 60),
                                        ),
                                        child: const Text('다음'),
                                        onPressed: () {
                                          _pageController.nextPage(
                                              duration:
                                                  Duration(milliseconds: 500),
                                              curve: Curves.decelerate);
                                        }),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //3page
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Center(
                      child: Stack(
                        children: [
                          Image.asset('assets/onboarding1/bg.jpg'),
                          Center(
                            child: Column(
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.2,
                                ),
                                Image.asset(
                                  'assets/onboarding1/img3.png',
                                  height: 230,
                                ),
                              ],
                            ),
                          ),
                          SafeArea(
                            child: Center(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.6,
                                  ),
                                  Image.asset(
                                    'assets/onboarding1/title3.jpg',
                                    width: 260,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SafeArea(
                            child: Center(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.74,
                                  ),
                                  Image.asset(
                                    'assets/onboarding1/commend3.jpg',
                                    width: 240,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Center(
                                    child: SmoothPageIndicator(
                                      controller: _pageController,
                                      count: 3,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.81,
                              ),
                              Container(
                                color: const Color(0xff3F69FF),
                                height: 60,
                                width: double.infinity,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    TextButton(
                                        style: TextButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xff3F69FF),
                                          primary: Colors.white,
                                          textStyle: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          minimumSize: Size(370, 60),
                                        ),
                                        child: const Text('시작하기'),
                                        onPressed: () {
                                          // Done 클릭시 isOnboarded = true로 저장
                                          prefs.setBool("isOnboarded", true);

                                          // Done 클릭시 페이지 이동
                                          Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    MainPage()),
                                          );
                                        }),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//       next: Text("Next", style: TextStyle(fontWeight: FontWeight.w600)),
//       done: Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
//       onDone: () {
//         // Done 클릭시 isOnboarded = true로 저장
//         prefs.setBool("isOnboarded", true);

//         // Done 클릭시 페이지 이동
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (context) => HomePage()),
//         );
//       },
//     ),
//   ],
// ),
//   );

// Image.asset('assets/onboarding1/bg.jpg'),
// Image.asset('assets/onboarding1/bottle.png',height: 300),
// Image.asset('assets/onboarding1/title.jpg', width: 200),
// Image.asset('assets/onboarding1/commend.jpg',width: 200),
