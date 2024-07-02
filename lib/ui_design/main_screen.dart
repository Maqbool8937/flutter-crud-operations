import 'package:flutter/material.dart';
import 'package:hasseb_project/ui_design/comment_screen.dart';
import 'package:hasseb_project/ui_design/home_screen.dart';
import 'package:hasseb_project/view/dashboard/profile/profile_screen.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';



class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<MainScreen> {
  //final _controller = PersistentTabController(initialIndex: 0);
  final _controller=PersistentTabController(initialIndex: 0);
  List<Widget> _buildScreens() {
    return [
      HomeScreen(),
     //CommentScreen(),
      Text('Notice'),
      Text('Fav'),

    ];
  }
  List<PersistentTabConfig> _navBarTab(){
    return [


      PersistentTabConfig(screen: HomeScreen(),
        item: ItemConfig(
          icon: Icon(Icons.home),
          activeForegroundColor: Colors.amber,
          title: "Home",
        ),
      ),
      PersistentTabConfig(screen: Text('Notice'),
        item: ItemConfig(
          icon: Icon(Icons.chat),
          activeForegroundColor: Colors.amber,
          title: "Notice",
        ),
      ),
      PersistentTabConfig(screen: Text('Fav'),
        item: ItemConfig(
          icon: Icon(Icons.favorite_outline),
          activeForegroundColor: Colors.amber,
          //inactiveBackgroundColor: Colors.black,
          title: "Fav",
        ),
      ),


    ];
  }


  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      tabs: _navBarTab(),
      navBarBuilder:  (navBarConfig) => Style2BottomNavBar(
        navBarConfig:   navBarConfig,
        navBarDecoration: const NavBarDecoration(
          color:   Color(0xff615A5A),

        ),
      ),
      controller: _controller,
      popAllScreensOnTapAnyTabs: true,
    );
  }
}