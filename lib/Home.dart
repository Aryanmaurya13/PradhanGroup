import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:pradhangroup/Screens/Listing.dart';
import 'package:pradhangroup/Screens/intrested.dart';
import 'package:pradhangroup/Screens/profile.dart';

import 'FuncScreen/Details.dart';
import 'Screens/Search.dart';
import 'Screens/frontpage.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  PersistentTabController _controller = PersistentTabController(initialIndex: 0);
  int pp = 0;
  List<Widget> _buildScreens() {
    return [
      front(),
      intrested(),
      Search(),
      Listing(),
      Profile(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    print(_controller.index);
    return [
      PersistentBottomNavBarItem(
        icon: Padding(
          padding: const EdgeInsets.all(6.0),
          child: (pp == 0)?Image.asset('assets/bottom/Homec.png'):Image.asset('assets/bottom/Home.png'),
        ),
        title: "Home",
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Padding(
          padding: const EdgeInsets.all(6.0),
          child: (pp == 1)?Image.asset('assets/bottom/Heartc.png'):Image.asset('assets/bottom/Heart.png'),
        ),
        title: "Settings",
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Padding(
          padding: const EdgeInsets.all(6.0),
          child: (pp == 2)?Image.asset('assets/bottom/Searchp.png'):Image.asset('assets/bottom/Search.png'),
        ),
        title: "Settings",
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Padding(
          padding: const EdgeInsets.all(6.0),
          child: (pp ==3)?Image.asset('assets/bottom/Listc.png'):Image.asset('assets/bottom/List.png'),
        ),
        title: "Settings",
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Padding(
          padding: const EdgeInsets.all(6.0),
          child: (pp == 4)?Image.asset('assets/bottom/Userc.png'):Image.asset('assets/bottom/User.png'),
        ),
        title: "Settings",
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }



  @override
  Widget build(BuildContext context) {


    return PersistentTabView(

      context,
      controller: _controller,
      onItemSelected: (_c){
        setState(() {
          pp = _controller.index;
        });

      },
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties( // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style12, // Choose the nav bar style with this property.
    );

  }
}
