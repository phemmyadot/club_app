import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:la_isla/theme/colors.dart';
import 'package:la_isla/widgets/shared/app_bar.dart';
import 'package:la_isla/widgets/shared/app_bottom_nav.dart';
import 'package:la_isla/widgets/shared/app_floating-button.dart';

class EventPage extends StatelessWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * 0.5),
          child: CustomAppBar()),
      floatingActionButton: CustomFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomNav(),
    );
  }
}
