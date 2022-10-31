import 'dart:math' as math;

List<Map<String, Object?>> allWords = [
  {
    "ID": 0,
    "Word": "If you don't put your life on the line, you can't earn your life.",
    "Author": "Friedrich Schiller",
    "Image": "",
  },
  {
    "ID": 2,
    "Word": "If you can dream it, you can do it.",
    "Author": "Friedrich Schiller",
    "Image": "",
  },
  {
    "ID": 3,
    "Word":
        "We don't have to be smarter than others. We have to be more disciplined than others.",
    "Author": "Warren Buffett",
    "Image": "",
  },
  {
    "ID": 4,
    "Word": "The harder the fight, the more honorable your victory!",
    "Author": "Thomas Paine",
    "Image": "",
  },
  {
    "ID": 5,
    "Word": "Work now, cry later.",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 6,
    "Word":
        "Although everything in this life is difficult, it is never impossible.",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 7,
    "Word": "Success is the sum of small efforts repeated every day.",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 8,
    "Word":
        "Those who take risks you do not dare to take will live the life you want to live.",
    "Author": "Sokrates",
    "Image": "",
  },
  {
    "ID": 9,
    "Word":
        "Failure will never catch me if my determination to succeed is strong enough!",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 10,
    "Word": "If you don't know how things are done, change it your way!",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 11,
    "Word":
        "People's biggest weakness is giving up. The surest rule of success is to always try one more time.",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 12,
    "Word": "Quality is not an action, it is a habit.",
    "Author": "Aristo",
    "Image": "",
  },
  {
    "ID": 13,
    "Word":
        "First ask yourself what will happen; then do whatever you need to do.",
    "Author": "Epiktetos",
    "Image": "",
  },
  {
    "ID": 14,
    "Word":
        "Accept the challenges so that you can feel the enthusiasm of victory.",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 15,
    "Word": "Life is 10% what happens to you and 90% how you respond to it.",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 16,
    "Word":
        "You will be responsible for the end of your life, not the beginning.",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 17,
    "Word":
        "Live as if you were living for the second time and misbehaved the first time.",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 18,
    "Word":
        "If the road ahead is clear, you are most likely on someone else's path.",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 19,
    "Word": "Only those who risk going too far see how far they can go.",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 20,
    "Word":
        "The world breaks everyone, and some get stronger from their broken places.",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 21,
    "Word":
        "Do not cry for the setting sun; Decide what you will do when he is reborn.",
    "Author": "Dale Camegie",
    "Image": "",
  },
  {
    "ID": 22,
    "Word":
        "You don't really need a miracle. You need to remember that you are a miracle.",
    "Author": "Tayfun Topaloğlu",
    "Image": "",
  },
  {
    "ID": 23,
    "Word": "If you don't ask questions, you didn't listen!",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 24,
    "Word":
        "If you don't design your own life plan, you'll find yourself in someone else's plan. And do you know what they have planned for you?",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 25,
    "Word":
        "You have the power within you right now to do things you could never have imagined.",
    "Author": "Maxwell Maltz",
    "Image": "",
  },
  {
    "ID": 26,
    "Word":
        "Be clear! Any product that requires a user manual is faulty from the start.",
    "Author": "Elon Musk",
    "Image": "",
  },
  {
    "ID": 27,
    "Word":
        "Do your job with passion! People should go after what they are passionate about. This makes individuals happy more than anything else.",
    "Author": "Elon Musk",
    "Image": "",
  },
  {
    "ID": 28,
    "Word": "Do or die but never give up!",
    "Author": "Elon Musk",
    "Image": "",
  },
  {
    "ID": 29,
    "Word":
        "Some people don't like change, but if the other alternative is disaster, you have to embrace change.",
    "Author": "Elon Musk",
    "Image": "",
  },
  {
    "ID": 30,
    "Word":
        "If you wake up in the morning and think that the future will be better, it will be a bright day.",
    "Author": "Elon Musk",
    "Image": "",
  },
  {
    "ID": 31,
    "Word":
        "When something is important enough, you do it even when the odds are not in your favour.",
    "Author": "Elon Musk",
    "Image": "",
  },
  {
    "ID": 32,
    "Word":
        "Failure is an option here. If things don't fail, you're not innovating enough.",
    "Author": "Elon Musk",
    "Image": "",
  },
  {
    "ID": 33,
    "Word":
        "Money can't buy what I value most in life. The most important resource we have in life is time.",
    "Author": "Steve Jobs",
    "Image": "",
  },
  {
    "ID": 34,
    "Word":
        "If you do something and something good comes out, then you should try for something better without waiting too long.",
    "Author": "Steve Jobs",
    "Image": "",
  },
  {
    "ID": 35,
    "Word":
        "I'm just as proud of the things we didn't do as the things we did, because innovation means no to thousands of ideas.",
    "Author": "Steve Jobs",
    "Image": "",
  },
  {
    "ID": 36,
    "Word": "Rule #1: Never lose money.\nRule 2: Never forget Rule 1.",
    "Author": "Warren Buffett",
    "Image": "",
  },
  {
    "ID": 37,
    "Word":
        "It's always good to be with people in a better position than you, spend time with people who have better manners than you. In time you will find that you are like them",
    "Author": "Warren Buffett",
    "Image": "",
  },
  {
    "ID": 38,
    "Word":
        "Whether it's a stocking or a stock, I buy it when the price drops.",
    "Author": "Warren Buffett",
    "Image": "",
  },
  {
    "ID": 39,
    "Word": "It takes 20 years to build a reputation, 5 minutes to lose it!",
    "Author": "Warren Buffett",
    "Image": "",
  },
  {
    "ID": 40,
    "Word":
        "If you double the number of experiments you do each year, you double your creativity.",
    "Author": "Jeff Bezos",
    "Image": "",
  },
  {
    "ID": 41,
    "Word": "Life is too short to spend time with people who don't benefit.",
    "Author": "Jeff Bezos",
    "Image": "",
  },
  {
    "ID": 42,
    "Word":
        "Don't show yourself less than you are. Everyone has a unique perspective they can bring to the world.",
    "Author": "Mark Zuckerberg",
    "Image": "",
  },
  {
    "ID": 43,
    "Word":
        "The biggest risk is not taking any risks. In a truly rapidly changing world, the only strategy that fails is not taking risks.",
    "Author": "Mark Zuckerberg",
    "Image": "",
  },
  {
    "ID": 44,
    "Word":
        "If things aren't breaking down, you're not moving fast enough. People learn by making mistakes.",
    "Author": "Mark Zuckerberg",
    "Image": "",
  },
  {
    "ID": 45,
    "Word":
        "When you want to change something, you can't please everyone. If you please everyone, you won't be making enough progress.",
    "Author": "Mark Zuckerberg",
    "Image": "",
  },
  {
    "ID": 46,
    "Word":
        "It's important for young entrepreneurs to be aware enough to know what they don't know.",
    "Author": "Mark Zuckerberg",
    "Image": "",
  },
  {
    "ID": 47,
    "Word":
        "People don't care what is said about you. They don't even care what you say. They look at what you are building.",
    "Author": "Mark Zuckerberg",
    "Image": "",
  },
  {
    "ID": 48,
    "Word":
        "If you don't give up, you still have a chance. And if you are small, you must rely on your brain rather than your strength and concentrate.'",
    "Author": "Jack Ma",
    "Image": "",
  },
  {
    "ID": 49,
    "Word":
        "If we're a good team that knows what they want to do, one of us can beat ten of them.",
    "Author": "Jack Ma",
    "Image": "",
  },
  {
    "ID": 50,
    "Word":
        "If you haven't done anything crazy, you're not on the right track.",
    "Author": "Larry Page",
    "Image": "",
  },
  {
    "ID": 51,
    "Word": "The only way to succeed is to fail hundreds of times.",
    "Author": "Sergey Brin",
    "Image": "",
  },
  {
    "ID": 52,
    "Word": "Failure should be seen as a road, not a wall.",
    "Author": "Eric Schmidt",
    "Image": "",
  },
  {
    "ID": 53,
    "Word":
        "We should follow our dreams and do the things that excite us. If you listen to your heart and do what you love, you will be more successful every time.",
    "Author": "Sundar Pichai",
    "Image": "",
  },
  {
    "ID": 54,
    "Word":
        "We make the small decisions in life with our minds and the big ones with our hearts.”",
    "Author": "Omid Kordestani",
    "Image": "",
  },
  {
    "ID": 55,
    "Word":
        "Be an expert in what you do, but always remember that you are not an 'expert'.",
    "Author": "Liz Wessel",
    "Image": "",
  },
  {
    "ID": 56,
    "Word":
        "Every time you make a plan, there will always be people around you who will judge you.",
    "Author": "Tim Armstrong",
    "Image": "",
  },
  {
    "ID": 57,
    "Word":
        "Set your goals well. Goals produce either conflict or action. If it generates conflict, change your goals.",
    "Author": "Jonathan Rosenberg",
    "Image": "",
  },
  {
    "ID": 58,
    "Word":
        "It's good to celebrate success, but it's more important to heed the lessons of failure.",
    "Author": "Bill Gates",
    "Image": "",
  },
  {
    "ID": 59,
    "Word":
        "Success is a lowly teacher. It seduces smart people that they won't lose.",
    "Author": "Bill Gates",
    "Image": "",
  },
  {
    "ID": 60,
    "Word":
        "We always exaggerate the changes that will happen two years later, and underestimate the ones 10 years from now. Don't let inactivity numb you.",
    "Author": "Bill Gates",
    "Image": "",
  },
  {
    "ID": 61,
    "Word": "If you can't do something good, make it look good.",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 62,
    "Word": "Patience is the key element of success.",
    "Author": "Bill Gates",
    "Image": "",
  },
  {
    "ID": 63,
    "Word":
        "Technology is just a tool. The most important thing to teach and motivate children to work together is the teacher.",
    "Author": "Bill Gates",
    "Image": "",
  },
  {
    "ID": 64,
    "Word":
        "In the next century, those who empower others will become leaders.",
    "Author": "Bill Gatess",
    "Image": "",
  },
  {
    "ID": 65,
    "Word": "If you show people problems and solutions, they will take action.",
    "Author": "Bill Gates",
    "Image": "",
  },
  {
    "ID": 66,
    "Word":
        "We get comfortable with those who agree with us, but we grow only because of those who disagree with us!",
    "Author": "Bill Gates",
    "Image": "",
  },
  {
    "ID": 67,
    "Word":
        "I failed some courses in the exams, and a friend of mine passed every course. He is now an engineer at Microsoft and I own Microsoft.",
    "Author": "Bill Gates",
    "Image": "",
  },
  {
    "ID": 68,
    "Word": "Sometimes you have to take big risks to win big.",
    "Author": "Bill Gates",
    "Image": "",
  },
  {
    "ID": 69,
    "Word":
        "Most people overestimate what they can do in a year and underestimate what they can do in ten years.",
    "Author": "Bill Gates",
    "Image": "",
  },
  {
    "ID": 70,
    "Word": "Even if you fall face down, you are still moving forward.",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 71,
    "Word": "Leaving. Suffer now and live the rest of your life as a champion.",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 72,
    "Word": "If you fail to prepare, you are preparing to fail!",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 73,
    "Word":
        "It's never too late to set another goal and realize your new dreams!",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 74,
    "Word": "You can never beat someone who doesn't give up.",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 75,
    "Word":
        "Never back down and explain. Finish it and let them go without looking back!",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 76,
    "Word":
        "There may be many difficulties on the way to success. You win when you learn not to give up even if you lose.",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 77,
    "Word":
        "You just have to put one foot in front of the other! Getting started is that simple!",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 78,
    "Word":
        "No one can go back and make a fresh start; but today he can make a new ending and start again.",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 79,
    "Word": "They watch first. They hate success. Then they imitate.",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 80,
    "Word":
        "There is no problem outside of you that is superior to the power within.",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 81,
    "Word": "A job well done is better than a job well said!",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 82,
    "Word":
        "Knowing is not enough; we must practice! Wanting is not enough, we must do it!",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 83,
    "Word":
        "If you don't put your life on the line, you can't earn your living.",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 84,
    "Word": "The more you do, the more you earn!",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 85,
    "Word":
        "I'd rather fail by trying to do something great than do nothing and be successful!",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 86,
    "Word": "Learn from yesterday, live today, hope for tomorrow!",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 87,
    "Word":
        "If you want to conquer fear, stop thinking about sitting at home and go out and start your conquest!",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 88,
    "Word": "Only I can change my life. Nobody does this for me!",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 89,
    "Word": "No obstacle is as great as the heart.",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 90,
    "Word":
        "I learned early in my life that if you want something, you better make some noise.",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 91,
    "Word":
        "I destroy the bridges I leave behind so that I have no choice but to move forward.",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 92,
    "Word":
        "If there is a way to do better, find it and don't listen to anyone!",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 93,
    "Word":
        "People's biggest weakness is giving up. The surest rule of success is to always try one more time.",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 94,
    "Word": "It doesn't matter how slow you go as long as you don't stop.",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 95,
    "Word":
        "Failure will never catch me if my determination to succeed is strong enough!",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 96,
    "Word": "Only what you do today can change all your tomorrows.",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 97,
    "Word": "A year from now you will wish you had started today.",
    "Author": "",
    "Image": "",
  },
  {
    "ID": 98,
    "Word":
        "Motivation and motivational words help you progress, habit leads to success.",
    "Author": "Zig Zaglar",
    "Image": "",
  },
  {
    "ID": 99,
    "Word": "If you don't stand up for anything, anything can bring you down.",
    "Author": "Gordon Eadie",
    "Image": "",
  },
  {
    "ID": 100,
    "Word": "The fears we don't face create our boundaries.",
    "Author": "Amy Elizabeth",
    "Image": "",
  },
];

class Words {
  final int iD;
  final String word;
  final String author;
  final String image;

  Words(
      {required this.iD,
      required this.author,
      required this.word,
      required this.image});

  factory Words.fromJson(Map<String, Object?> json) {
    return Words(
        iD: json['ID'] as int,
        author: json['Author'] as String,
        word: json['Word'] as String,
        image: json["Image"] as String);
  }

  factory Words.getRandomWord() {
    math.Random random = math.Random();
    return Words.fromJson(allWords[random.nextInt(allWords.length - 1)]);
  }
}
