
import 'package:flutter/material.dart';
import 'package:hasseb_project/view/dashboard/profile/profile_screen.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';



class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  //final _controller = PersistentTabController(initialIndex: 0);
final _controller=PersistentTabController(initialIndex: 0);
  List<Widget> _buildScreens() {
    return [
      Text('home'),
      Text('chat'),
      Text('Fav'),
      ProfileScreen(),
    ];
  }
  List<PersistentTabConfig> _navBarTab(){
    return [


      PersistentTabConfig(screen: Text('home'),
          item: ItemConfig(
          icon: Icon(Icons.home),
            activeForegroundColor: Colors.amber,
    title: "Home",
            ),
      ),
      PersistentTabConfig(screen: Text('Chat'),
        item: ItemConfig(
          icon: Icon(Icons.chat),
          activeForegroundColor: Colors.amber,
         title: "Chat",
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
      PersistentTabConfig(screen: const ProfileScreen(),
        item: ItemConfig(
          icon: Icon(Icons.person_outline),
          activeForegroundColor: Colors.amber.shade900,
          title: "person",
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


//     return PersistentTabView(tabs:[
//
//     ] ,
//         navBarBuilder:);
//
//      // backgroundColor: const Color(0xff615A5A), tabs: [],
//
//
//
//   }
// }
//



    // return Scaffold(
    //
    // );
//     return PersistentTabView(context,
//         screens: _buildScreens(),
//     items: _navBarItem(),
//
//       backgroundColor: const Color(0xff615A5A), tabs: [],
//
//     );
//
//   }
// }

// SignOut or Logout method and userId for saving values:
/*AppBar(
        title: Text(SessionController().userId.toString()),
      actions: [
        IconButton(onPressed: (){
          FirebaseAuth auth=FirebaseAuth.instance;
          auth.signOut().then((value){
            SessionController().userId='';
            Navigator.pushNamed(context, RoutesName.loginScreen);
          });
        },
            icon: Icon(Icons.logout))
      ],
      ),*/
