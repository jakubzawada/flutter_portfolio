import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/project_container.dart';

class MyProjectsInfo extends StatelessWidget {
  const MyProjectsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 50, left: 100.0, right: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Projects',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
          ),
          SizedBox(height: 80),
          ProjectContainer(
            title: 'DropCheck',
            image: 'images/dropcheck.png',
            projectUrl:
                'https://play.google.com/store/apps/details?id=com.jakubzawada.drop_check',
            description: [
              'Dropcheck is an essential tool in the world of streetwear!',
              'Thanks to Dropcheck you will always be up to date:',
              'Footwear news - never miss the hottest sneaker launches.',
              'Best streetwear promotions - discover stylish apparel at great prices.',
              'Personalized notifications - set reminders for your favorite drops and promotions to always stay one step ahead.',
              'Dropcheck is an app designed for street fashion lovers, bringing your passion for sneakers and streetwear together in one place.',
              'Convenient, fast and always up to date - be part of this community today!',
            ],
          ),
          SizedBox(height: 50),
          ProjectContainer(
            title: 'ThisIsYourTraining',
            image: 'images/ThisIsYourTraining.png',
            projectUrl:
                'https://play.google.com/store/apps/details?id=com.jakubzawada.this_is_your_training',
            description: [
              'Your one-stop tool for health, training and motivation!',
              'ThisIsYourTraining is an app designed for anyone who wants to achieve their workout goals, track progress and connect with other like-minded individuals.',
              'With our features, there\'s something for every user, from customized workout plans to daily activity tracking to community inspiration.',
            ],
          ),
          SizedBox(height: 50),
          ProjectContainer(
            title: 'YourWeather',
            image: 'images/your-weather-icon2.png',
            projectUrl: 'https://github.com/jakubzawada/your_weather',
            description: [
              'YourWeather: check the weather forecast for every day!',
              'YourWeather is an app that allows you to check the exact weather in the ',
              'city of your choice, no matter where you are. Simple, fast and reliable - ',
              'ideal for people who want to be always prepared for any aura.',
            ],
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
