import 'dart:async';
import 'dart:developer';
import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:teenmotivation/Models/Words.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:teenmotivation/Pages/App/HomePage.dart';
import 'package:teenmotivation/Pages/Login/SplashPage.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);
  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

final bool isLoading = true;
late Timer loadingTimer;
String? isSkipped;

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    inspect("önce: " + isSkipped.toString());
    getSkipped();
    inspect("sonra: " + isSkipped.toString());
    loadingTimer = Timer(const Duration(milliseconds: 2500), () {
      if (isSkipped == null) {
        inspect("geçilmemiş");
        Get.offAll(WelcomeSplashScreen());
      } else if (isSkipped == "false") {
        inspect("geçilmemiş");
        Get.offAll(WelcomeSplashScreen());
      } else if (isSkipped == "true") {
        Get.offAll(HomePage());
        inspect("geçilmiş");
      }
      print("süre bitti");
    });
  }

  Future<void> getSkipped() async {
    isSkipped = await storage.read(key: "isSkipped");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("teen", style: Theme.of(context).textTheme.headline4),
                Text("motivation",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        ?.merge(const TextStyle(fontWeight: FontWeight.bold))),
              ],
            ),
          ),
          const SizedBox(height: 25),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              height: 10,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: LinearProgressIndicator(
                  backgroundColor: Colors.grey,
                  valueColor: AlwaysStoppedAnimation<Color>(
                      Color.fromARGB(255, 230, 230, 230)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
