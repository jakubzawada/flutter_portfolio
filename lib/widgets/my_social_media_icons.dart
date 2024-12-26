import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MySocialMediaIcons extends StatelessWidget {
  const MySocialMediaIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
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
          child: const Icon(
            FontAwesomeIcons.instagram,
            color: Colors.white,
            size: 20,
          ),
        ),
        const SizedBox(width: 20),
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
          child: const Icon(
            FontAwesomeIcons.linkedin,
            color: Colors.white,
            size: 20,
          ),
        ),
        const SizedBox(width: 20),
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
          child: const Icon(
            FontAwesomeIcons.facebook,
            color: Colors.white,
            size: 20,
          ),
        ),
        const SizedBox(width: 20),
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
          child: const Icon(
            FontAwesomeIcons.github,
            color: Colors.white,
            size: 20,
          ),
        ),
      ],
    );
  }
}
