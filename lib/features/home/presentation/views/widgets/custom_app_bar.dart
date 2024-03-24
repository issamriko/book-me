import 'package:bookme/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 60),
      child: Row(
        children: [
          Image.asset(AssetsData.logo, height: 22),
          const Spacer(),
          const Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 21,
          ),
        ],
      ),
    );
  }
}
