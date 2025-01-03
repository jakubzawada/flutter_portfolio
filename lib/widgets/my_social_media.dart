import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MySocialMedia extends StatelessWidget {
  final double instaIconSize;
  final double facebookIconSize;
  final double linkedinIconSize;
  final double githubIconSize;

  const MySocialMedia({
    super.key,
    this.instaIconSize = 50,
    this.facebookIconSize = 50,
    this.linkedinIconSize = 50,
    this.githubIconSize = 34,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () async {
            const url = 'https://www.instagram.com/ejjuu_3/';
            if (await canLaunchUrl(Uri.parse(url))) {
              await launchUrl(Uri.parse(url),
                  mode: LaunchMode.externalApplication);
            } else {
              throw 'Could not launch $url';
            }
          },
          child: Image(
            image: const AssetImage('images/insta-logo.webp'),
            width: instaIconSize,
            height: instaIconSize,
          ),
        ),
        const SizedBox(width: 10),
        InkWell(
          onTap: () async {
            const url = 'https://www.facebook.com/kuba.zawada.311';
            if (await canLaunchUrl(Uri.parse(url))) {
              await launchUrl(Uri.parse(url),
                  mode: LaunchMode.externalApplication);
            } else {
              throw 'Could not launch $url';
            }
          },
          child: Image(
            image: const AssetImage('images/facebook_logo.png'),
            width: facebookIconSize,
            height: facebookIconSize,
          ),
        ),
        const SizedBox(width: 10),
        InkWell(
          onTap: () async {
            const url = 'https://www.linkedin.com/in/jakub-zawada-5264181a5/';
            if (await canLaunchUrl(Uri.parse(url))) {
              await launchUrl(Uri.parse(url),
                  mode: LaunchMode.externalApplication);
            } else {
              throw 'Could not launch $url';
            }
          },
          child: Image(
            image: const AssetImage('images/linkedin-logo.webp'),
            width: linkedinIconSize,
            height: linkedinIconSize,
          ),
        ),
        const SizedBox(width: 10),
        InkWell(
          onTap: () async {
            const url = 'https://github.com/jakubzawada';
            if (await canLaunchUrl(Uri.parse(url))) {
              await launchUrl(Uri.parse(url),
                  mode: LaunchMode.externalApplication);
            } else {
              throw 'Could not launch $url';
            }
          },
          child: Image(
            image: const AssetImage('images/git-logo.png'),
            width: githubIconSize,
            height: githubIconSize,
          ),
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}
