import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/my_social_media_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NarrowContactMeHub extends StatelessWidget {
  final double paddingLeft;
  final double paddingRight;
  final double paddingTop;
  final double paddingBottom;
  final double letsWorkTogetherFontSize;

  const NarrowContactMeHub({
    super.key,
    this.paddingLeft = 200.0,
    this.paddingRight = 200.0,
    this.paddingTop = 40.0,
    this.paddingBottom = 20.0,
    this.letsWorkTogetherFontSize = 58.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.only(
        left: paddingLeft,
        right: paddingRight,
        top: paddingTop,
        bottom: paddingBottom,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'Let\'s work together',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: letsWorkTogetherFontSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    '- Contact info',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'JakubZawadaa3@gmail.com',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(width: 10),
                      Text(
                        '+48 730 554 188',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const MySocialMediaIcons(),
                ],
              ),
            ],
          ),
          const SizedBox(height: 40),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Build with',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(width: 10),
              Icon(
                FontAwesomeIcons.flutter,
                color: Colors.blue,
                size: 20,
              ),
            ],
          ),
          const SizedBox(height: 5),
          const Text(
            '© 2024 Jakub Zawada',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
