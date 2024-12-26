import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/my_social_media.dart';

class AboutMeInfo extends StatelessWidget {
  final VoidCallback onSeeMyWorksPressed;

  const AboutMeInfo({
    super.key,
    required this.onSeeMyWorksPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Flutter Developer',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
        ),
        const SizedBox(height: 20),
        const Text(
          'Hi, I\'m Jakub Zawada!',
          style: TextStyle(fontSize: 18),
        ),
        const Text(
          '- a mobile developer',
          style: TextStyle(fontSize: 18),
        ),
        const Text(
          '- a web developer',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 60),
        InkWell(
          onTap: onSeeMyWorksPressed,
          child: const Row(
            children: [
              Text(
                'See My Works',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(width: 8),
              Icon(
                Icons.arrow_forward_sharp,
                size: 20,
              ),
            ],
          ),
        ),
        const SizedBox(height: 40),
        const MySocialMedia(
          instaIconSize: 66,
          facebookIconSize: 66,
          linkedinIconSize: 66,
          githubIconSize: 44,
        )
      ],
    );
  }
}
