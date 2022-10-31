import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:teenmotivation/Pages/App/HomePage.dart';

TextEditingController _nameController = TextEditingController();
final storage = const FlutterSecureStorage();
FirebaseMessaging messaging = FirebaseMessaging.instance;

class RegisterNamePage extends StatelessWidget {
  const RegisterNamePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.3),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("What's your name?",
                  style: Theme.of(context).textTheme.headline4),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.050),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: TextFormField(
                controller: _nameController,
                style: const TextStyle(fontSize: 25, color: Colors.black),
                maxLength: 12,
                decoration: const InputDecoration(
                  hintText: "My name is...",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.020),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.40,
                      vertical: 13),
                  textStyle: const TextStyle(
                    fontFamily: "Roboto Medium",
                    fontSize: 20,
                  ),
                ),
                onPressed: () async {
                  if (_nameController.text.isEmpty) {
                    Get.defaultDialog(
                        titlePadding: EdgeInsets.only(top: 25),
                        title: "Error",
                        content: const Text("You have to write your name."),
                        actions: [
                          TextButton(
                            child: const Text("Ok"),
                            onPressed: () {
                              Get.back();
                            },
                          ),
                        ]);
                  } else {
                    NotificationSettings settings =
                        await messaging.requestPermission(
                      alert: true,
                      announcement: false,
                      badge: true,
                      carPlay: false,
                      criticalAlert: false,
                      provisional: false,
                      sound: true,
                    );
                    print(
                        'User granted permission: ${settings.authorizationStatus}');
                    Get.snackbar("Successful", "Welcome to Teen Motivation.");
                    storage.write(key: "name", value: _nameController.text);
                    storage.write(key: "isSkipped", value: "true");
                    Get.offAll(const HomePage());
                  }
                },
                child: Text("Finish"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
