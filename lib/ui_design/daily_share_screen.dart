import 'package:flutter/material.dart';

class DailyShareScreen extends StatefulWidget {
  const DailyShareScreen({super.key});

  @override
  State<DailyShareScreen> createState() => _DailyShareScreenState();
}

class _DailyShareScreenState extends State<DailyShareScreen> {
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
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DailyShareScreen()));
                },
                child: Text(
                  'Daily Share',
                  style: TextStyle(color: Colors.white),
                ))
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https://images.unsplash.com/photo-1716847214624-1e8787d98b6c?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
              ),
              title: Text('Camelio',style: TextStyle(color: Colors.white,fontSize: 16),),
              subtitle: Text('Summer vrese',style: TextStyle(color: Colors.grey,fontSize: 16),),
              trailing: Icon(Icons.more_vert,color: Colors.white,),
            ),
            SizedBox(height: height*0.01,),
            Container(
        
                child: Image(image: NetworkImage('https://images.unsplash.com/photo-1715353500115-51fce92308d5?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1fHx8ZW58MHx8fHx8')))
          ],
        ),
      ),
    );
  }
}
