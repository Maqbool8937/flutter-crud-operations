import 'package:flutter/material.dart';

import 'notification_screen.dart';
class CommentScreen extends StatefulWidget {
  const CommentScreen({super.key});

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  @override
  Widget build(BuildContext context) {
    final colorr=Color(0xff494949);
    final color=Color(0XFFFFC38C,);
    final height=MediaQuery.of(context).size.height*1;
    final width=MediaQuery.of(context).size.width*1;
    return Scaffold(
      bottomSheet: Container(
        height: 280,
        width: double.infinity,
        decoration: BoxDecoration(

          color:colorr,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(),

        ),
    child: Column(
      children: [

        Padding(
          padding: const EdgeInsets.only(top: 16,left: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
                height: 34,
                width: 100,
                decoration: BoxDecoration(
                  color: color,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(16)

                ),

                child: Center(child: Text('Comments',style: TextStyle(fontWeight: FontWeight.bold),))),
          ),
        ),
        SizedBox(height: 6,),
        Container(
          height: 50,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.grey.shade700,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage('https://plus.unsplash.com/premium_photo-1713991088871-614d45da7fdb?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
              ),
              SizedBox(width: 12,),
              Text('write Comments',style: TextStyle(color: Colors.white),)
            ],
          ),
        ),
        SizedBox(height: 4,),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage('https://plus.unsplash.com/premium_photo-1713991088871-614d45da7fdb?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
          ),
          title: Text('Wilson',style: TextStyle(color: Colors.white),),
          subtitle: Text('⭐⭐⭐⭐⭐'),
          trailing: Icon(Icons.favorite,color: Colors.red,),
        ),
        Text('This scenery looks really nice and cool.\nWhat do you think.',style: TextStyle(color: Colors.white),)
      ],
    ),
      ),
      backgroundColor: Color(0xff363333),
      appBar: AppBar(
        backgroundColor: Color(0xff363333),
        automaticallyImplyLeading: true,foregroundColor: color,

        actions: [
          Icon(Icons.forward_outlined,color: color,)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 2,bottom: 34),
        child: SafeArea(
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://images.unsplash.com/photo-1716847214624-1e8787d98b6c?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                ),
                title: Text('Camelio',style: TextStyle(color: Colors.white,fontSize: 16),),
                subtitle: Text('Summer vrese',style: TextStyle(color: Colors.grey,fontSize: 16),),
                trailing: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationScreen()));
                    },
                    child: Icon(Icons.more_vert,color: Colors.white,)),
              ),
              //SizedBox(height: 4,),
              Container(
                height: 220,
                width: 370,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(34),
                    child: Image.network('https://images.unsplash.com/photo-1716847214624-1e8787d98b6c?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3DS')),
              ),
              //  SizedBox(height: height*0.01,),
              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 3),
                child: Row(
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
              ),
              //SizedBox(height: 4,),
              Row(
                children: [
                  Text('😄😄'),
                  SizedBox(width: width*0.03,),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text('These little animals are so parhetic.\nWe should help these.....',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

}
