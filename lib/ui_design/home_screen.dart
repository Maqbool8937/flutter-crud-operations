import 'package:flutter/material.dart';
import 'package:hasseb_project/ui_design/comment_screen.dart';

import 'daily_share_screen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final color=Color(0XFFFFC38C,);
    final height=MediaQuery.of(context).size.height*1;
    final width=MediaQuery.of(context).size.width*1;
    return Scaffold(
  appBar: AppBar(
    backgroundColor: Color(0xff363333),
    automaticallyImplyLeading: false,

    title: Row(
      children: [
        Icon(Icons.video_call,color: color,),
        SizedBox(width: 10.0,),
        InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DailyShareScreen()));
            },
            child: Text('Daily Share',style: TextStyle(color: Colors.white),))
      ],
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(left: 5,right: 14),
        child: Icon(Icons.search,color: Colors.white,size: 28,),
      )
    ],
  ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 TextButton(onPressed: (){},
                     child: Container(
                       height: 30,
                       width: 70,
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(20)
                      ),
                       child: Center(child: Text('Hot',style: TextStyle(fontWeight: FontWeight.bold),)),
                     )
                 ),
                 Text('Funny',style: TextStyle(color: Colors.grey),),
                Text('Scenery',style: TextStyle(color: Colors.grey),),
                 Container(
                   height: 50,
                   width: 50,
        
                   child: Padding(
                     padding: const EdgeInsets.only(top: 16.0),
                     child: Column(
                       children: [
                         Container(
                           height: 2,
                           width: 20,
                           color: Colors.white,
                         ),
                         SizedBox(height: 4,),
                         Container(
                           height: 2,
                           width: 20,
                           color: Colors.white,
                         ),
                         SizedBox(height: 4,),
                         Container(
                           height: 2,
                           width: 20,
                           color: Colors.white,
                         )
                       ],
                     ),
                   )
                 ),
               ],
             ),
        SizedBox(height: height*0.01,),
              ListTile(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>CommentScreen()));
                },
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://images.unsplash.com/photo-1716847214624-1e8787d98b6c?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                ),
                title: Text('Camelio',style: TextStyle(color: Colors.white,fontSize: 16),),
                subtitle: Text('Summer vrese',style: TextStyle(color: Colors.grey,fontSize: 16),),
                trailing: Icon(Icons.more_vert,color: Colors.white,),
              ),
              SizedBox(height: height*0.01,),
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),

                ),
                child: Image.network('https://images.unsplash.com/photo-1716847214624-1e8787d98b6c?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3DS'),
              ),
              SizedBox(height: height*0.01,),
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)
                    ),

                    child: Row(
                      children: [
                        Icon(Icons.favorite,color: Colors.red,),
                        SizedBox(width: 3,),
                        Text('22k',style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 30,
                          width:30,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(50)
                          ),

                          child: CircleAvatar(
                              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1716847214624-1e8787d98b6c?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 0),
                          child: Container(
                            height: 30,
                            width:30,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(50)
                            ),

                            child: CircleAvatar(
                                backgroundImage: NetworkImage('https://images.unsplash.com/photo-1716847214624-1e8787d98b6c?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right:6,left:0),
                          child: Container(
                            height: 30,
                            width:30,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child: CircleAvatar(
                                backgroundImage: NetworkImage('https://images.unsplash.com/photo-1716847214624-1e8787d98b6c?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: width*0.1,),
                  Container(
                    height: 30,
                    width: 45,
                    decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(14)
                    ),

                    child: Icon(Icons.account_balance_rounded,),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 30,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)
                    ),

                    child: Row(
                      children: [
                        Icon(Icons.favorite,color: Colors.grey.shade100,),
                        SizedBox(width: 3,),
                        Text('2k',style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: height*0.01,),
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
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),

                ),
                child: Image.network('https://images.unsplash.com/photo-1716847214624-1e8787d98b6c?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3DS'),
              ),
              SizedBox(height: height*0.01,),
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)
                    ),

                    child: Row(
                      children: [
                        Icon(Icons.favorite,color: Colors.red,),
                        SizedBox(width: 3,),
                        Text('22k',style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 30,
                          width:30,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(50)
                          ),

                          child: CircleAvatar(
                              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1716847214624-1e8787d98b6c?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 0),
                          child: Container(
                            height: 30,
                            width:30,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(50)
                            ),

                            child: CircleAvatar(
                                backgroundImage: NetworkImage('https://images.unsplash.com/photo-1716847214624-1e8787d98b6c?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right:6,left:0),
                          child: Container(
                            height: 30,
                            width:30,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child: CircleAvatar(
                                backgroundImage: NetworkImage('https://images.unsplash.com/photo-1716847214624-1e8787d98b6c?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: width*0.1,),
                  Container(
                    height: 30,
                    width: 45,
                    decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(14)
                    ),

                    child: Icon(Icons.account_balance_rounded,),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 30,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)
                    ),

                    child: Row(
                      children: [
                        Icon(Icons.favorite,color: Colors.grey.shade100,),
                        SizedBox(width: 3,),
                        Text('2k',style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
