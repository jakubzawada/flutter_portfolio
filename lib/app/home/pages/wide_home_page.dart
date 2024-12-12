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
    return const Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 80),
                  Padding(
                    padding: EdgeInsets.only(top: 200, left: 200.0, right: 220),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AboutMeInfo(),
                        SizedBox(
                          width: 350,
                          height: 350,
                          child: Placeholder(),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 300),
                  MyProjectsInfo(),
                ],
              ),
            ),
          ),
          TopNavBar(),
        ],
      ),
    );
  }
}
