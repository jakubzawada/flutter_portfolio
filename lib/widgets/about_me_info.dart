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
            IconButton(
              icon: const Icon(Icons.code),
              iconSize: 30,
              onPressed: () {},
            ),
            const SizedBox(width: 10),
            IconButton(
              icon: const Icon(Icons.code),
              iconSize: 30,
              onPressed: () {},
            ),
            const SizedBox(width: 10),
            IconButton(
              icon: const Icon(Icons.code),
              iconSize: 30,
              onPressed: () {},
            ),
            const SizedBox(width: 10),
            IconButton(
              icon: const Icon(Icons.facebook),
              iconSize: 30,
              onPressed: () {},
            ),
            const SizedBox(width: 10),
          ],
        )
      ],
    );
  }
}
