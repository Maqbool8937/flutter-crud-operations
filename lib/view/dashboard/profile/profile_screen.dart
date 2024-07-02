




import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:hasseb_project/view_model/services/session_manager.dart';

import '../../../utils/routes/routes_name.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final refs = FirebaseDatabase.instance.ref('users');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(SessionController().userId.toString()),
        actions: [
          IconButton(onPressed: () {
            FirebaseAuth auth = FirebaseAuth.instance;
            auth.signOut().then((value) {
              SessionController().userId = '';
              Navigator.pushNamed(context, RoutesName.loginScreen);
            });
          },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SafeArea(
          child: StreamBuilder(
            stream: FirebaseFirestore.instance.collection('users').snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              }

              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }

              final data = snapshot.requireData;

              return ListView.builder(
                itemCount: data.size,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(data.docs[index]['name']),
                    subtitle:  Text(data.docs[index]['email']),
                  );
                },
              );
            },
          ),


        ),

      ),
    );
  }
}
          // child:StreamBuilder(
          //   stream: refs.child(SessionController().userId.toString()).onValue,
          //   builder: (context,AsyncSnapshot snapshot){
          //     if(snapshot.hasData){
          //       return const Center(child: CircularProgressIndicator());
          //     }else if(snapshot.hasData){
          //       Map<dynamic,dynamic>map=snapshot.data.snapshot.value;
          //       return  Column(
          //         crossAxisAlignment: CrossAxisAlignment.center,
          //         mainAxisAlignment: MainAxisAlignment.start,
          //         children: [
          //           const SizedBox(height: 20,),
          //           Center(
          //             child: Container(
          //                 height: 130,
          //                 width: 130,
          //                 decoration: BoxDecoration(
          //                   shape: BoxShape.circle,
          //                   border: Border.all(color: Colors.white),
          //                 ),
          //                 child: ClipRRect(
          //                   borderRadius: BorderRadius.circular(100),
          //                   child: Image(
          //                       image: const AssetImage('assets/images/download.png'),
          //                       fit: BoxFit.cover,
          //                       loadingBuilder: (context, child,
          //                           loadingProgress) {
          //                         if (loadingProgress == null)
          //                           return child;
          //                         return Center(
          //                           child: CircularProgressIndicator(),);
          //                       },
          //                       errorBuilder: (context, object, stack) {
          //                         return  Container(
          //                           child: Icon(
          //                             Icons.error, color: Colors.white,),
          //                         );
          //                       }
          //
          //                   ),
          //                 )
          //             ),
          //           ),
          //           ListTile(
          //               title: Text(map['name'],)
          //           ),
          //         ],
          //       );
          //     }else{
          //      return Center(child:Text('some thing went wrong') ,);
          //
          //     }
          //   },
          // )
  //     ),
  //   );
  // }
  // }

/*Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: StreamBuilder(
            stream: ref
                .child(SessionController().userId.toString())
                .onValue,

            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return Center(child: CircularProgressIndicator());
              } else if (snapshot.hasData) {
                Map<dynamic, dynamic>map = snapshot.data.snapshot.value;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Center(
                      child: Container(
                          height: 130,
                          width: 130,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image(
                                image: AssetImage('assets/images/download.png'),
                                fit: BoxFit.cover,
                                loadingBuilder: (context, child,
                                    loadingProgress) {
                                  if (loadingProgress == null)
                                    return child;
                                  return Center(
                                    child: CircularProgressIndicator(),);
                                },
                                errorBuilder: (context, object, stack) {
                                  return Container(
                                    child: Icon(
                                      Icons.error, color: Colors.white,),
                                  );
                                }

                            ),
                          )
                      ),
                    ),
                    ListTile(
                        title: Text(map['name'],)
                    )
                  ],
                );
              } else {
                return Center(child: Text('Some thing went wrong'),);
              }
            },

          )
      ),
    );
  }
  }
*/
// class ProfileScreen extends StatefulWidget {
//   const ProfileScreen({super.key});
//
//   @override
//   State<ProfileScreen> createState() => _ProfileScreenState();
// }
//
// class _ProfileScreenState extends State<ProfileScreen> {
//
//   final user = FirebaseFirestore.instance;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//       Padding(
//       padding: EdgeInsets.symmetric(horizontal: 15),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           SizedBox(height: 20,),
//           Center(
//             child: Container(
//                 height: 130,
//                 width: 130,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   border: Border.all(color: Colors.white),
//                 ),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(100),
//                   child: Image(
//                       image: AssetImage('assets/images/download.png'),
//                       fit: BoxFit.cover,
//                       loadingBuilder: (context,child,loadingProgress){
//                         if(loadingProgress==null)
//                           return child;
//                         return Center(child: CircularProgressIndicator(),);
//
//                       },
//                       errorBuilder: (context,object, stack){
//                         return Container(
//                           child: Icon(Icons.error,color: Colors.white,),
//                         );
//                       }
//
//                   ),
//                 )
//             ),
//           ),
//           SafeArea(
//             child: StreamBuilder(
//               stream: FirebaseFirestore.instance.collection('users').snapshots(),
//               builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
//               if (snapshot.hasError) {
//               return Center(child: Text('Error: ${snapshot.error}'));
//               }
//
//               if (snapshot.connectionState == ConnectionState.waiting) {
//               return Center(child: CircularProgressIndicator());
//               }
//
//               final data = snapshot.requireData;
//
//               return ListView.builder(
//               itemCount: data.size,
//               itemBuilder: (context, index) {
//               return ListTile(
//               title: Text(data.docs[index]['name']),
//               );
//               },
//               );
//               },
//               ),
//
//               ),
//         ],
//       ),
//     ),
//     ],
//       ),
//     );
//
//   }
// }



//             builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
//               if (snapshot.hasError) {
//                 return Center(child: Text('Error: ${snapshot.error}'));
//               }
//
//               if (snapshot.connectionState == ConnectionState.waiting) {
//                 return Center(child: CircularProgressIndicator());
//               }
//
//               final data = snapshot.requireData;
//
//               return ListView.builder(
//                 itemCount: data.size,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text(data.docs[index]['name']),
//                   );
//                 },
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
//       child: StreamBuilder(
//         stream:user.collection('users').doc(SessionController().userId.toString().snapshot
//
//         builder: (context,AsyncSnapshot snapshot){
//         if(snapshot.hasData){
//           return Center(child: CircularProgressIndicator());
//         }else if(snapshot.hasData){
//      Map<dynamic,dynamic>map=snapshot.data.snapshot.value;
//           return Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               SizedBox(height: 20,),
//               Center(
//                 child: Container(
//                     height: 130,
//                     width: 130,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       border: Border.all(color: Colors.white),
//                     ),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(100),
//                       child: Image(
//                           image: AssetImage('assets/images/download.png'),
//                           fit: BoxFit.cover,
//                           loadingBuilder: (context,child,loadingProgress){
//                             if(loadingProgress==null)
//                               return child;
//                             return Center(child: CircularProgressIndicator(),);
//
//                           },
//                           errorBuilder: (context,object, stack){
//                             return Container(
//                               child: Icon(Icons.error,color: Colors.white,),
//                             );
//                           }
//
//                       ),
//                     )
//                 ),
//               ),
//               ListTile(
//                 title:Text(map['name'] ,)
//               )
//             ],
//           );
//         }else{
//          return Center(child: Text('Some thing went wrong'),);
//           }
//         },
//
//       )
//     ),
//   ),
//     );
//   }
//