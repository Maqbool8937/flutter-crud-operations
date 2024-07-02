import 'package:flutter/material.dart';

import 'donation_screen.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    final color = Color(
      0XFFFFC38C,
    );
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff363333),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Icon(
              Icons.video_call,
              color: color,
            ),
            SizedBox(
              width: 10.0,
            ),

                 Text(
                  'Daily Share',
                  style: TextStyle(color: Colors.white),
                )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 14),
            child: Icon(
              Icons.search,
              color: Colors.white,
              size: 28,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DonationScreen()));
                },
                child: Container(
                    height: 34,
                    width: 100,
                    decoration: BoxDecoration(
                        color: color,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(16)
                
                    ),
                
                    child: Center(child: Text('Notice',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),))),
              ),
              SizedBox(width: 30,),
              Text('Inbox',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 24),),
              
            ],
          ),
          SizedBox(height: 20,),
          Card(
            color:Color(0xff363333) ,
            child: Column(
              children: [
                ListTile(

                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://plus.unsplash.com/premium_photo-1713991088871-614d45da7fdb?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                  ),
                  title: Text('Welcium',style: TextStyle(color: Colors.white),),
                  subtitle: Text('d Your Work\n1 hour ago',style: TextStyle(color: Colors.white)),
                  trailing: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                        image: NetworkImage('https://plus.unsplash.com/premium_photo-1713991088871-614d45da7fdb?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),))
                ),
                Divider(),
                ListTile(

                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://plus.unsplash.com/premium_photo-1713991088871-614d45da7fdb?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                    ),
                    title: Text('Welcium',style: TextStyle(color: Colors.white),),
                    subtitle: Text('d Your Work\n1 hour ago',style: TextStyle(color: Colors.white)),
                    trailing: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                          image: NetworkImage('https://plus.unsplash.com/premium_photo-1713991088871-614d45da7fdb?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),))
                ),
                Divider(),
                ListTile(

                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://plus.unsplash.com/premium_photo-1713991088871-614d45da7fdb?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                    ),
                    title: Text('Welcium',style: TextStyle(color: Colors.white),),
                    subtitle: Text('d Your Work\n1 hour ago',style: TextStyle(color: Colors.white)),
                    trailing: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                          image: NetworkImage('https://plus.unsplash.com/premium_photo-1713991088871-614d45da7fdb?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),))
                ),
                Divider(),
                ListTile(

                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://plus.unsplash.com/premium_photo-1713991088871-614d45da7fdb?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                    ),
                    title: Text('Welcium',style: TextStyle(color: Colors.white),),
                    subtitle: Text('d Your Work\n1 hour ago',style: TextStyle(color: Colors.white)),
                    trailing: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                          image: NetworkImage('https://plus.unsplash.com/premium_photo-1713991088871-614d45da7fdb?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),))
                ),
                Divider(),
                ListTile(

                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://plus.unsplash.com/premium_photo-1713991088871-614d45da7fdb?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                    ),
                    title: Text('Welcium',style: TextStyle(color: Colors.white),),
                    subtitle: Text('d Your Work\n1 hour ago',style: TextStyle(color: Colors.white)),
                    trailing: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                          image: NetworkImage('https://plus.unsplash.com/premium_photo-1713991088871-614d45da7fdb?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),))
                ),
                
              ],
            ),
          )
        ],
      ),
    );
  }
}
