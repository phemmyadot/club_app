import 'package:flutter/material.dart';
import 'package:la_isla/theme/colors.dart';
import 'package:la_isla/widgets/shared/app-drawer.dart';
import 'package:la_isla/widgets/shared/app_bar.dart';
import 'package:la_isla/widgets/shared/app_bottom_nav.dart';
import 'package:la_isla/widgets/shared/app_floating-button.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tabView = Container();
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: PreferredSize(
        child: CustomAppBar(
          showGradient: false,
          tabView: tabView,
        ),
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.1),
      ),
      drawer: CustomAppDrawer(),
      floatingActionButton: CustomFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomNav(),
    );
  }
}
