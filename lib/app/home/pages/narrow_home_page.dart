import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/about_me_info.dart';
import 'package:flutter_portfolio/widgets/narrow_my_project_info.dart';

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
            Text(
              'JZ',
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
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
                padding: EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AboutMeInfo(),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40, left: 80),
                child: Image(
                  image: AssetImage('images/ThisIsYourTraining.png'),
                  width: 300,
                  height: 300,
                ),
              ),
              NarrowMyProjectsInfo(),
            ],
          ),
        ),
      ),
    );
  }
}
