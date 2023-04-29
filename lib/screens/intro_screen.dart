import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../model/intro_model.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});

  PageController pageController = PageController(initialPage: 0);
  List<IntroModel> introPageList = ([
    IntroModel(
      "Number Verification",
      "",
      "assets/images/intro1.jpg",
    ),
    IntroModel(
      "Number Verification",
      "",
      "assets/images/intro2.jpg",
    ),
    IntroModel(
      "Number Verification",
      "",
      "assets/images/intro3.jpg",
    ),
    IntroModel(
      "Number Verification",
      "",
      "assets/images/intro4.jpg",
    ),
  ]);

  var currentShowIntex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      body: Column(children: [
        SizedBox(
          height: MediaQuery.of(context).padding.top,
        ),
        Expanded(
          child: PageView(
            controller: pageController,
            pageSnapping: true,
            physics: const BouncingScrollPhysics(),
            onPageChanged: (index) {
              currentShowIntex = index;
            },
            scrollDirection: Axis.horizontal,
            children: [
              IntroView(imageData: introPageList[0]),
              IntroView(imageData: introPageList[1]),
              IntroView(imageData: introPageList[2]),
              IntroView(imageData: introPageList[3]),
              IntroView(imageData: introPageList[4]),
            ],
          ),
        ),
        SmoothPageIndicator(
            controller: pageController,
            count: introPageList.length,
            effect: SlideEffect(
              dotColor: Colors.grey,
              activeDotColor: Theme.of(context).canvasColor,
            ),
            onDotClicked: (index) {}),
        Padding(
          padding: const EdgeInsets.only(
            left: 48,
            right: 48,
            bottom: 32,
            top: 32,
          ),
          child: Container(
            height: 48,
            decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                      color: Theme.of(context).disabledColor.withOpacity(0.2),
                      blurRadius: 8,
                      offset: const Offset(
                        4,
                        4,
                      ))
                ]),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(
                  24,
                ),
                child: const Center(
                  child: Text(
                    "Register",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).padding.bottom,
        )
      ]),
    );
  }
}
