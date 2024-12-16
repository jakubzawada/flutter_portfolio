import 'package:flutter/material.dart';
import 'package:flutter_portfolio/app/home/pages/narrow_home_page.dart';
import 'package:flutter_portfolio/app/home/pages/ultra_wide_home_page.dart';
import 'package:flutter_portfolio/app/home/pages/wide_home_page.dart';
import 'package:flutter_portfolio/core/responsive_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      ultrawawide: UltraWideHomePage(),
      wide: WideHomePage(),
      narrow: NarrowHomePage(),
    );
  }
}
