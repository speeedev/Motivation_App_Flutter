import 'package:teenmotivation/Models/Words.dart';
import 'dart:math' as math;

List<Map<String, Object?>> allImages = [
  {"Image": "assets/backgrounds/1.jpg"},
  {"Image": "assets/backgrounds/2.jpg"},
  {"Image": "assets/backgrounds/3.jpg"},
  {"Image": "assets/backgrounds/4.jpg"},
  {"Image": "assets/backgrounds/5.jpg"},
  {"Image": "assets/backgrounds/6.jpg"},
  {"Image": "assets/backgrounds/7.jpg"},
  {"Image": "assets/backgrounds/8.jpg"},
  {"Image": "assets/backgrounds/9.jpg"},
  {"Image": "assets/backgrounds/10.jpg"},
  {"Image": "assets/backgrounds/11.jpg"},
  {"Image": "assets/backgrounds/12.jpg"},
  {"Image": "assets/backgrounds/13.jpg"},
  {"Image": "assets/backgrounds/14.jpg"},
  {"Image": "assets/backgrounds/15.jpg"},
  {"Image": "assets/backgrounds/16.jpg"},
  {"Image": "assets/backgrounds/17.jpg"},
  {"Image": "assets/backgrounds/18.jpg"},
  {"Image": "assets/backgrounds/19.jpg"},
  {"Image": "assets/backgrounds/20.jpg"},
  {"Image": "assets/backgrounds/21.jpg"},
  {"Image": "assets/backgrounds/22.jpg"},
  {"Image": "assets/backgrounds/23.jpg"},
  {"Image": "assets/backgrounds/24.jpg"},
  {"Image": "assets/backgrounds/25.jpg"},
  {"Image": "assets/backgrounds/26.jpg"},
  {"Image": "assets/backgrounds/27.jpg"},
  {"Image": "assets/backgrounds/28.jpg"},
  {"Image": "assets/backgrounds/29.jpg"},
  {"Image": "assets/backgrounds/30.jpg"},
];

class Images {
  final String Image;

  Images({required this.Image});

  factory Images.fromJson(Map<String, Object?> json) {
    return Images(
      Image: json["Image"] as String,
    );
  }

  factory Images.getRandomImage() {
    math.Random random = math.Random();
    return Images.fromJson(allImages[random.nextInt(allImages.length - 1)]);
  }
}
