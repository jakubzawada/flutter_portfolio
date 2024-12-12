import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/about_me_info.dart';
import 'package:flutter_portfolio/widgets/my_projects_info.dart';

class NarrowHomePage extends StatelessWidget {
  const NarrowHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('LOGO'),
            Icon(Icons.menu),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50, left: 100.0, right: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AboutMeInfo(),
                  ],
                ),
              ),
              SizedBox(
                width: 300,
                height: 300,
                child: Placeholder(),
              ),
              MyProjectsInfo(),
            ],
          ),
        ),
      ),
    );
  }
}
