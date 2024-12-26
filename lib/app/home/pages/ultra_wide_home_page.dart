import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/about_me_info.dart';
import 'package:flutter_portfolio/widgets/contact_me_hub.dart';
import 'package:flutter_portfolio/widgets/contact_me_info.dart';
import 'package:flutter_portfolio/widgets/my_projects_info.dart';
import 'package:flutter_portfolio/widgets/top_nav_bar.dart';

class UltraWideHomePage extends StatelessWidget {
  UltraWideHomePage({super.key});

  final ScrollController scrollController = ScrollController();
  final GlobalKey ultraWideProjectsKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 80),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 200, left: 200.0, right: 220),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AboutMeInfo(
                        onSeeMyWorksPressed: () {
                          Scrollable.ensureVisible(
                            ultraWideProjectsKey.currentContext!,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                      ),
                      Flexible(
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            double imageSize = constraints.maxWidth * 0.6;
                            imageSize = imageSize.clamp(250, 500);
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
                Padding(
                  key: ultraWideProjectsKey,
                  padding: const EdgeInsets.only(left: 100, right: 150),
                  child: const MyProjectsInfo(),
                ),
                const SizedBox(height: 40),
                const Padding(
                  padding: EdgeInsets.only(left: 160, right: 180),
                  child: ContactMeInfo(),
                ),
                const SizedBox(height: 140),
                const ContactMeHub(),
              ],
            ),
          ),
          TopNavBar(
            onHomePressed: () {
              scrollController.animateTo(
                0,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
            onMyProjectsPressed: () {
              Scrollable.ensureVisible(
                ultraWideProjectsKey.currentContext!,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
          ),
        ],
      ),
    );
  }
}
