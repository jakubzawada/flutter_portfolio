import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text('LOGO'),
                const Spacer(),
                Row(
                  children: [
                    const Text('Home'),
                    const SizedBox(width: 30),
                    const Text('About'),
                    const SizedBox(width: 30),
                    const Text('My projects'),
                    const SizedBox(width: 30),
                    const Text('Contact'),
                    const SizedBox(width: 30),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text(
                        'RESUME',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 60.0, right: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Flutter Developer',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 40),
                      ),
                      const SizedBox(height: 20),
                      const Text('Hi, I\'m Jakub Zawada!'),
                      const Text('- a mobile developer'),
                      const Text('- a web developer'),
                      const SizedBox(height: 40),
                      const Row(
                        children: [
                          Text(
                            'See My Works',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 8),
                          Icon(
                            Icons.arrow_forward_sharp,
                            size: 20,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
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
                  ),
                  const SizedBox(
                    width: 300,
                    height: 300,
                    child: Placeholder(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
