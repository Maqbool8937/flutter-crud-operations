import 'package:flutter/material.dart';
class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    final colorr=Color(0xff494949);
    final color=Color(0XFFFFC38C,);
    final height=MediaQuery.of(context).size.height*1;
    final width=MediaQuery.of(context).size.width*1;
    return Scaffold(

        appBar:AppBar(
        automaticallyImplyLeading: true,
        foregroundColor: color,
        backgroundColor: Color(0xff363333),
    title: Padding(
    padding: const EdgeInsets.only(left: 130),
    child: Container(child: Text('Payment',style: TextStyle(color: Colors.white),)),
    ),
    ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(),
            ListTile(
              title: Text('Bellefit Premium',style: TextStyle(color: color,fontWeight: FontWeight.bold),),
              subtitle: Text('6 months',style: TextStyle(color: Colors.grey),),
              trailing: Icon(Icons.circle,color: color,),
            ),
        
            Padding(
              padding: const EdgeInsets.only(top: 0,right: 260),
              child: Text('Change',style: TextStyle(color: color),),
            ),
            Divider(),
            ListTile(
              title: Text('Save Card',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
              trailing: Text('+ Add New Cards',style: TextStyle(color: color,fontSize: 16),),
            ),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff363333),
                borderRadius: BorderRadius.circular(100)
              ),
              child: Center(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Center(child: Image(image: NetworkImage('https://cdn.pixabay.com/photo/2021/06/21/13/09/card-6353650_640.jpg')))
                  ],
                ),
              ),
            ),
            Icon(Icons.more_horiz,color: Colors.white,),
        Text('Other Payment Options',style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold),),
        
            Column(
                        children: [
            ListTile(
              leading: CircleAvatar(),
              title: Text('UPI',style: TextStyle(color: Colors.grey),),
              trailing:Icon(Icons.circle_outlined,color: color,),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text('UPI',style: TextStyle(color: Colors.grey),),
              trailing:Icon(Icons.circle_outlined,color: color,),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text('UPI',style: TextStyle(color: Colors.grey),),
              trailing:Icon(Icons.circle_outlined,color: color,),
            ),
            Divider(),
       SingleChildScrollView(
         child: Column(

           children: [
             ListTile(
               title: Text('Plan',style: TextStyle(color: Colors.grey,fontSize: 18),),
               trailing: Text('jkab',style: TextStyle(color: Colors.grey,fontSize: 18)),
             ),
             ListTile(
               title: Text('Plan',style: TextStyle(color: Colors.grey,fontSize: 18),),
               trailing: Text('jkab',style: TextStyle(color: Colors.grey,fontSize: 18)),
             ),
             ListTile(
               title: Text('Plan',style: TextStyle(color: Colors.grey,fontSize: 18),),
               trailing: Text('jkab',style: TextStyle(color: Colors.grey,fontSize: 18)),
             ),
             Container(
               height: 50,
               width: 300,
               decoration: BoxDecoration(
                   color: color,
                 borderRadius: BorderRadius.circular(10),
               ),
               child: Center(
                 child: Text('Donate',style: TextStyle(color: Colors.white,fontSize: 22),),
               ),
             )
           ],
         ),
       ),

                        ],
            )
          ],
        ),
      ),
    );
  }
}
