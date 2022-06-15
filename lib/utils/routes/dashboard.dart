import 'package:dro_health/presentation/community_screen.dart';
import 'package:dro_health/presentation/doctors_screen.dart';
import 'package:dro_health/presentation/home_screen.dart';
import 'package:dro_health/presentation/pharmacy_screen.dart';
import 'package:dro_health/presentation/profile_screen.dart';
import 'package:dro_health/utils/config/extensions.dart';
import 'package:dro_health/utils/config/size_config.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentPageIndex = 0;

  final List<Widget> _pages =  [
    HomeScreen(),
    DoctorsScreen(),
    PharmacyScreen(),
    CommunityScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: _pages[_currentPageIndex],
      bottomNavigationBar: Container(
        color: AppColors.navBarBackground,
        child: BottomAppBar(
          elevation: 0,
          color: AppColors.navBarBackground,
          child: SizedBox(
            width: SizeConfig.screenWidth,
            height: 60.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconBottomBar(
                      text: "Home",
                      icon: Icons.home_filled,
                      isSelected: _currentPageIndex == 0,
                      onPressed: (){
                        setState(() {
                          _currentPageIndex = 0;
                        });
                      }),
                  IconBottomBar(
                      text: "Doctors",
                      icon: Icons.person,
                      isSelected: _currentPageIndex == 1,
                      onPressed: (){
                        setState(() {
                          _currentPageIndex = 1;
                        });
                      }),
                  IconBottomBar(
                      text: "Pharmacy",
                      icon: Icons.add_shopping_cart,
                      isSelected: _currentPageIndex == 2,
                      onPressed: (){
                        setState(() {
                          _currentPageIndex = 2;
                        });
                      }),
                  IconBottomBar(
                      text: "Community",
                      icon: Icons.chat_outlined,
                      isSelected: _currentPageIndex == 3,
                      onPressed: (){
                        setState(() {
                          _currentPageIndex = 3;
                        });
                      }),
                  IconBottomBar(
                      text: "Profile",
                      icon: Icons.person_pin_rounded,
                      isSelected: _currentPageIndex == 0,
                      onPressed: (){
                        setState(() {
                          _currentPageIndex = 0;
                        });
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// CUSTOM ICON BOTTOM BAR
class IconBottomBar extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool isSelected;
  final Function() onPressed;
  const IconBottomBar({Key? key,
    required this.text,
    required this.icon,
    required this.isSelected,
    required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            onPressed: onPressed,
            icon: Icon(
                icon, size: 25, color: isSelected ? AppColors.iconPurple : AppColors.navItemColor)
        ),
        Text(text, style: TextStyle(
            fontSize: 12,
            height: .1,
            color: isSelected ? AppColors.iconPurple : AppColors.navItemColor
        ),)
      ],
    );
  }
}