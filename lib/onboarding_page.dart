import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:kkulkkeog/main.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xff3F69FF),
      body: Container(
        padding: const EdgeInsets.only(bottom: 60),
        child: PageView(
          children: [
            Container(
              child: Stack(
                children: [
                  Container(
                    child: Image.asset('assets/onboarding1/bg.jpg'),
                  ),
                  // Positioned(
                  //   bottom: 200,
                  //   right: 100,
                  //   child: Image.asset(
                  //     'assets/onboarding1/bottle.png',
                  //     height: 300,
                  //   ),
                  // ),
                  Container(
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.1,
                          ),
                          Image.asset(
                            'assets/onboarding1/bottle.png',
                            height: 300,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: SafeArea(
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.6,
                            ),
                            Image.asset(
                              'assets/onboarding1/title.jpg',
                              width: 200,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: SafeArea(
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.74,
                            ),
                            Image.asset(
                              'assets/onboarding1/commend.jpg',
                              width: 200,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                      width: double.infinity,
                      child: Column(
                        children: [
                          ConstrainedBox(
                              constraints: BoxConstraints.expand(),
                              child: TextButton(
                                  onPressed: null,
                                  //padding: EdgeInsets.all(0.0),
                                  child: Image.asset(
                                      'assets/onboarding1/commend.jpg'))),
                        ],
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
      //Stack(
      //   children: [
      //     IntroductionScreen(
      //       pages: [
      //         // 첫 번째 페이지
      //         PageViewModel(
      //           title: "빠른 개발",
      //           body: "Flutter의 hot reload는 쉽고 UI 빌드를 도와줍니다.",
      //           image: Padding(
      //             padding: EdgeInsets.all(32),
      //             child: Image.network(
      //                 'https://user-images.githubusercontent.com/26322627/143761841-ba5c8fa6-af01-4740-81b8-b8ff23d40253.png'),
      //           ),
      //           decoration: PageDecoration(
      //             titleTextStyle: TextStyle(
      //               color: Colors.blueAccent,
      //               fontSize: 24,
      //               fontWeight: FontWeight.bold,
      //             ),
      //             bodyTextStyle: TextStyle(
      //               color: Colors.black,
      //               fontSize: 18,
      //             ),
      //           ),
      //         ),
      //         // 두 번째 페이지
      //         PageViewModel(
      //           title: "표현력 있고 유연한 UI",
      //           body: "Flutter에 내장된 아름다운 위젯들로 사용자를 기쁘게 하세요.",
      //           image: Image.network(
      //               'https://user-images.githubusercontent.com/26322627/143762620-8cc627ce-62b5-426b-bc81-a8f578e8549c.png'),
      //           decoration: PageDecoration(
      //             titleTextStyle: TextStyle(
      //               color: Colors.blueAccent,
      //               fontSize: 24,
      //               fontWeight: FontWeight.bold,
      //             ),
      //             bodyTextStyle: TextStyle(
      //               color: Colors.black,
      //               fontSize: 18,
      //             ),
      //           ),
      //         ),
      //       ],
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
  