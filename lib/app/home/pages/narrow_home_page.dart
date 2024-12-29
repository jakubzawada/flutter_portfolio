import 'package:flutter/material.dart';
import 'package:flutter_portfolio/app/home/pages/menu_page.dart';
import 'package:flutter_portfolio/widgets/about_me_info.dart';
import 'package:flutter_portfolio/widgets/contact_me_info.dart';
import 'package:flutter_portfolio/widgets/narrow_contact_me_hub.dart';
import 'package:flutter_portfolio/widgets/narrow_my_project_info.dart';

class NarrowHomePage extends StatefulWidget {
  const NarrowHomePage({super.key});

  @override
  State<NarrowHomePage> createState() => _NarrowHomePageState();
}

class _NarrowHomePageState extends State<NarrowHomePage> {
  final GlobalKey myProjectsKey = GlobalKey();
  final GlobalKey contactMeKey = GlobalKey();

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
                Icons.menu,
              ),
              onTap: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MenuPage(
                      myProjectsKey: myProjectsKey,
                      contactMeKey: contactMeKey,
                    ),
                  ),
                );
                if (result == 'scrollToProjects') {
                  Scrollable.ensureVisible(
                    myProjectsKey.currentContext!,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                } else if (result == 'scrollToContact') {
                  Scrollable.ensureVisible(
                    contactMeKey.currentContext!,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
              },
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AboutMeInfo(
                    onSeeMyWorksPressed: () {
                      Scrollable.ensureVisible(
                        myProjectsKey.currentContext!,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    titleFontSize: 40,
                  ),
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Image(
                    image: AssetImage('images/ThisIsYourTraining.png'),
                    width: 300,
                    height: 300,
                  ),
                ),
              ],
            ),
            Padding(
              key: myProjectsKey,
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: const NarrowMyProjectsInfo(),
            ),
            const SizedBox(height: 40),
            Padding(
              key: contactMeKey,
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: const ContactMeInfo(),
            ),
            const SizedBox(height: 140),
            const NarrowContactMeHub(
              paddingLeft: 20,
              paddingRight: 20,
              letsWorkTogetherFontSize: 30,
            ),
          ],
        ),
      ),
    );
  }
}
