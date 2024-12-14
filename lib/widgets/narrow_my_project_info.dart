import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/narrow_project_container.dart';

class NarrowMyProjectsInfo extends StatelessWidget {
  const NarrowMyProjectsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Projects',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
          ),
          SizedBox(height: 80),
          NarrowProjectContainer(
            title: 'DropCheck',
            image: 'images/dropcheck.png',
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
          NarrowProjectContainer(
            title: 'ThisIsYourTraining',
            image: 'images/ThisIsYourTraining.png',
            description: [
              'Your one-stop tool for health, training and motivation!',
              'ThisIsYourTraining is an app designed for anyone who wants to achieve their workout goals, track progress and connect with other like-minded individuals.',
              'With our features, there\'s something for every user, from customized workout plans to daily activity tracking to community inspiration.',
            ],
          ),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}