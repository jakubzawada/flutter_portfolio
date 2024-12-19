import 'package:flutter/material.dart';
import 'package:flutter_portfolio/app/home/home_page.dart';
import 'package:flutter_portfolio/widgets/my_social_media.dart';
import 'package:url_launcher/url_launcher.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'JZ',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              InkWell(
                child: const Icon(
                  Icons.close,
                  size: 40,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 80, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  child: const Text(
                    'home',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black54,
                    ),
                  ),
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 20),
                InkWell(
                  child: const Text(
                    'projects',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black54,
                    ),
                  ),
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 20),
                InkWell(
                  child: const Text(
                    'about',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black54,
                    ),
                  ),
                  onTap: () {},
                ),
                const SizedBox(height: 20),
                InkWell(
                  child: const Text(
                    'contact',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black54,
                    ),
                  ),
                  onTap: () {},
                ),
                const SizedBox(height: 40),
                InkWell(
                  onTap: () async {
                    const url =
                        'https://drive.google.com/file/d/1bRszJY-BarnHED7H6pLs8bfFsiYXh8pn/view';
                    if (await canLaunchUrl(Uri.parse(url))) {
                      await launchUrl(Uri.parse(url),
                          mode: LaunchMode.externalApplication);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Container(
                    width: 100,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      'RESUME',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 100),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MySocialMedia(),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
