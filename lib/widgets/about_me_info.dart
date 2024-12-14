import 'package:flutter/material.dart';

class AboutMeInfo extends StatelessWidget {
  const AboutMeInfo({
    super.key,
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
        const Row(
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
        const SizedBox(height: 40),
        Row(
          children: [
            InkWell(
              onTap: () {},
              child: const Image(
                image: AssetImage('images/insta-logo.webp'),
                width: 50,
                height: 50,
              ),
            ),
            const SizedBox(width: 10),
            InkWell(
              onTap: () {},
              child: const Image(
                image: AssetImage('images/facebook_logo.png'),
                width: 50,
                height: 50,
              ),
            ),
            const SizedBox(width: 10),
            InkWell(
              onTap: () {},
              child: const Image(
                image: AssetImage('images/linkedin-logo.webp'),
                width: 50,
                height: 50,
              ),
            ),
            const SizedBox(width: 10),
            InkWell(
              onTap: () {},
              child: const Image(
                image: AssetImage('images/git-logo.png'),
                width: 34,
                height: 34,
              ),
            ),
            const SizedBox(width: 10),
          ],
        )
      ],
    );
  }
}
