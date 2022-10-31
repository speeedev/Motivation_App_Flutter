import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:flutter_onboard/flutter_onboard.dart';
import 'package:teenmotivation/Pages/Login/RegisterNamePage.dart';

class WelcomeSplashScreen extends StatefulWidget {
  const WelcomeSplashScreen({Key? key}) : super(key: key);
  @override
  State<WelcomeSplashScreen> createState() => _WelcomeSplashScreenState();
}

final storage = const FlutterSecureStorage();
final _pageController = new PageController();

class _WelcomeSplashScreenState extends State<WelcomeSplashScreen> {
  @override
  void initState() {
    super.initState();
    storage.write(key: "isSkipped", value: "false");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoard(
        pageController: _pageController,
        onBoardData: onBoardData,
        titleStyles: Theme.of(context)
            .textTheme
            .headline4
            ?.merge(const TextStyle(fontWeight: FontWeight.bold)),
        descriptionStyles: Theme.of(context).textTheme.bodyMedium,
        curve: Curves.fastOutSlowIn,
        onDone: () async {
          Get.offAll(const RegisterNamePage());
        },
      ),
    );
  }
}

final List<OnBoardModel> onBoardData = [
  const OnBoardModel(
    title: "Welcome",
    description: "Get motivational notifications with Teen Motivation",
    imgUrl: "assets/introduction/larry-page.png",
  ),
  const OnBoardModel(
    title: "For motivation",
    description: "If you need motivation, you're in the right place my friend.",
    imgUrl: "assets/introduction/elon-musk.png",
  ),
  const OnBoardModel(
    title: "But..",
    description:
        "I would like to remind you: If you are aiming to become a millionaire, do not waste your time with motivational apps like this :)",
    imgUrl: "assets/introduction/steve-jobs.png",
  ),
];
