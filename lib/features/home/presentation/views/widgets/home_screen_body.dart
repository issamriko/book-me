import 'package:bookme/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookme/features/home/presentation/views/widgets/custom_listview_item.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(),
        ListViewItem()
      ],
    );
  }
}

