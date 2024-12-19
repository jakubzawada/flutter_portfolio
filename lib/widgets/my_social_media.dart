import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MySocialMedia extends StatelessWidget {
  const MySocialMedia({
    super.key,
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
          child: const Image(
            image: AssetImage('images/insta-logo.webp'),
            width: 50,
            height: 50,
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
          child: const Image(
            image: AssetImage('images/facebook_logo.png'),
            width: 50,
            height: 50,
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
          child: const Image(
            image: AssetImage('images/linkedin-logo.webp'),
            width: 50,
            height: 50,
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
          child: const Image(
            image: AssetImage('images/git-logo.png'),
            width: 34,
            height: 34,
          ),
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}
