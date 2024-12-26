import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/about_me_info.dart';
import 'package:flutter_portfolio/widgets/contact_me_hub.dart';
import 'package:flutter_portfolio/widgets/contact_me_info.dart';
import 'package:flutter_portfolio/widgets/my_projects_info.dart';
import 'package:flutter_portfolio/widgets/top_nav_bar.dart';

class WideHomePage extends StatelessWidget {
  WideHomePage({
    super.key,
  });

  final ScrollController scrollController = ScrollController();
  final GlobalKey wideProjectsKey = GlobalKey();
  final GlobalKey contactMeInfoKey = GlobalKey();

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
                      const EdgeInsets.only(top: 200, left: 100.0, right: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AboutMeInfo(
                        onSeeMyWorksPressed: () {
                          Scrollable.ensureVisible(
                            wideProjectsKey.currentContext!,
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
                  key: wideProjectsKey,
                  padding: const EdgeInsets.only(left: 5, right: 45),
                  child: const MyProjectsInfo(),
                ),
                const SizedBox(height: 40),
                Padding(
                  key: contactMeInfoKey,
                  padding: const EdgeInsets.only(left: 160, right: 180),
                  child: const ContactMeInfo(),
                ),
                const SizedBox(height: 140),
                const ContactMeHub(
                  paddingLeft: 40,
                  paddingRight: 40,
                  letsWorkTogetherFontSize: 48,
                ),
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
                wideProjectsKey.currentContext!,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
            onContactPressed: () {
              Scrollable.ensureVisible(
                contactMeInfoKey.currentContext!,
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
