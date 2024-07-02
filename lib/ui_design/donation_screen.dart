import 'package:flutter/material.dart';
import 'package:hasseb_project/res/components/round_button.dart';

import 'payment_screen.dart';
class DonationScreen extends StatefulWidget {
  const DonationScreen({super.key});

  @override
  State<DonationScreen> createState() => _DonationScreenState();
}

class _DonationScreenState extends State<DonationScreen> {
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
          padding: const EdgeInsets.only(left: 65,bottom: 7),
          child: Text('Donation',style: TextStyle(color: Colors.white),),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 250,
                  width: 300,
                  decoration: BoxDecoration(
                    color: colorr,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child:  Image(fit:BoxFit.cover,
                      image:AssetImage('assets/images/download.png')
                  )
              ),
              ),
              SizedBox(height: height*0.01,),
              Text('How much wanna donate?',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
              SizedBox(height: height*0.02,),
              Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                  color: Color(0xffB5B0B0),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Center(child: Text('Enter Amount',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),)),
              ),
              SizedBox(height: height*0.02,),
              Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                    color: Color(0xff363333),
                    borderRadius: BorderRadius.circular(10),
                  border: Border.all()
                ),
                child: Center(child: Text('150',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),)),
              ),
              SizedBox(height: height*0.01,),
              Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  color: Color(0xff363333),
                ),
                child: Center(child: Text("50",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),)),
              ),
              SizedBox(height: height*0.03,),
              Container(
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                  color: color,
                ),
                child: InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>PaymentScreen()));
                    },
                    child: Center(child: Text('Donate',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),))),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
