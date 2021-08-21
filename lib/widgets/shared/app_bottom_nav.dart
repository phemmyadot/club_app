import 'package:flutter/material.dart';
import 'package:la_isla/theme/colors.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Color(0xFFF39DB6),
      shape: CircularNotchedRectangle(),
      notchMargin: 2.5,
      child: Container(
        padding: EdgeInsets.only(top: 10.0),
        child: BottomNavigationBar(
            backgroundColor: Color(0xFFF39DB6),
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: 0,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: AppColors.white,
                  size: 30,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  padding: EdgeInsets.only(right: 30),
                  child: new Icon(
                    Icons.search,
                    color: AppColors.white,
                    size: 30,
                  ),
                ),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  padding: EdgeInsets.only(left: 30),
                  child: Icon(
                    Icons.perm_identity,
                    color: AppColors.white,
                    size: 30,
                  ),
                ),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.more_horiz,
                  color: AppColors.white,
                  size: 30,
                ),
                label: 'Search',
              ),
            ]),
      ),
    );
  }
}
