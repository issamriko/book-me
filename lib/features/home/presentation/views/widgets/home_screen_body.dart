import 'package:bookme/core/utils/style.dart';
import 'package:bookme/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookme/features/home/presentation/views/widgets/featured_booksListView.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(height: 50),
          Text(
            "Best seller",
            style: Style.mediumFont,
          ),
        ],
      ),
    );
  }
}
