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
              Size.fromHeight(MediaQuery.of(context).size.height * 0.1),
          child: CustomAppBar()),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child: Column(
            children: [
              Container(
                height: 100,
                child: Text(
                  'widget 1',
                  style: TextStyle(color: AppColors.white),
                ),
              ),
              Container(
                height: 100,
                child: Text(
                  'widget 1',
                  style: TextStyle(color: AppColors.white),
                ),
              ),
              Container(
                height: 100,
                child: Text(
                  'widget 1',
                  style: TextStyle(color: AppColors.white),
                ),
              ),
              Container(
                height: 100,
                child: Text(
                  'widget 1',
                  style: TextStyle(color: AppColors.white),
                ),
              ),
              Container(
                height: 100,
                child: Text(
                  'widget 1',
                  style: TextStyle(color: AppColors.white),
                ),
              ),
              Container(
                height: 100,
                child: Text(
                  'widget 1',
                  style: TextStyle(color: AppColors.white),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: CustomFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomNav(),
    );
  }
}
