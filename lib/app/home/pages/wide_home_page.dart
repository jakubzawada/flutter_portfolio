import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/about_me_info.dart';
import 'package:flutter_portfolio/widgets/my_projects_info.dart';
import 'package:flutter_portfolio/widgets/top_nav_bar.dart';

class WideHomePage extends StatelessWidget {
  const WideHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 80),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 200, left: 200.0, right: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const AboutMeInfo(),
                        // Dynamiczny rozmiar obrazu
                        Flexible(
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              // Oblicz proporcję obrazu względem szerokości
                              double imageSize = constraints.maxWidth *
                                  0.6; // Większy procent szerokości
                              imageSize = imageSize.clamp(
                                  250, 500); // Większy zakres rozmiarów
                              return Image(
                                image: const AssetImage(
                                    'images/ThisIsYourTraining.png'),
                                width: imageSize,
                                height: imageSize,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 300),
                  const MyProjectsInfo(),
                ],
              ),
            ),
          ),
          const TopNavBar(),
        ],
      ),
    );
  }
}
