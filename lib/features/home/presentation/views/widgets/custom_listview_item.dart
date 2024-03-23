import 'package:bookme/core/utils/assets.dart';
import 'package:flutter/material.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .4, //width mt3l9 b height
      child: AspectRatio(
        //for responsive image
        aspectRatio: 1.4 / 2,
        child: Container(
          decoration: BoxDecoration(
            // color: Colors.red,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsData.testImg),
            ),
          ),
        ),
      ),
    );
  }
}
