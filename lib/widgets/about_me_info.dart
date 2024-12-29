import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/my_social_media.dart';

class AboutMeInfo extends StatefulWidget {
  final VoidCallback onSeeMyWorksPressed;
  final double titleFontSize;

  const AboutMeInfo({
    super.key,
    required this.onSeeMyWorksPressed,
    this.titleFontSize = 60,
  });

  @override
  AboutMeInfoState createState() => AboutMeInfoState();
}

class AboutMeInfoState extends State<AboutMeInfo>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    _slideAnimation =
        Tween<Offset>(begin: const Offset(-1, 0), end: Offset.zero)
            .animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOut,
    ));

    _fadeAnimation =
        Tween<double>(begin: 0, end: 1).animate(_animationController);

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _slideAnimation,
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Flutter Developer',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: widget.titleFontSize,
              ),
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
            InkWell(
              onTap: widget.onSeeMyWorksPressed,
              child: const Row(
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
            ),
            const SizedBox(height: 40),
            const MySocialMedia(
              instaIconSize: 66,
              facebookIconSize: 66,
              linkedinIconSize: 66,
              githubIconSize: 44,
            )
          ],
        ),
      ),
    );
  }
}
