import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main (){
  runApp(MaterialApp(home: workerhome(),));
}
class workerhome extends StatelessWidget{
  var image=['assets/image/8048.jpg','assets/image/5759.jpg','assets/image/plumber-with-thumb-up.jpg','assets/image/woman-repairer-with-painting-roller-isolated.jpg'];
  var color=[Colors.lime,Colors.grey,Colors.brown];
  var iconname=['View requests','Feedback','View Postworks'];
  var icon=[Icons.request_page,Icons.feedback,Icons.grid_view_rounded];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(backgroundColor: Colors.transparent,
         actions: [
           IconButton(onPressed: (){},color: Colors.black, icon:FaIcon(FontAwesomeIcons.bell,color: Colors.black,)),
           InkWell(onTap: (){
             showDialog(context: context, builder: (context){
               return Container(height: 200,
                 child: AlertDialog(
                   content: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(20),
                         child: Row(
                           children: [
                             ClipRRect(
                               borderRadius: BorderRadius.circular(30),
                               child: Image.asset(
                                 'assets/icon/person.png',
                                 // Adjust the path to your actual image
                                 width: 80,
                                 height: 80,
                                 fit: BoxFit.cover,
                               ),
                             ),
                             const SizedBox(
                               width: 15,
                             ),
                             Expanded(
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   // Text(
                                   //   "Name : ${user.displayName!}",
                                   //   style: TextStyle(
                                   //     fontSize: 23,
                                   //   ),
                                   // ),
                                   // Text(
                                   //   "Email : ${user.email!}",
                                   //
                                   //   style: TextStyle(
                                   //      // fontSize: 15,fontWeight: FontWeight.w600
                                   //   ),
                                   // )
                                 ],
                               ),
                             ),
                           ],
                         ),
                       ),
                       Divider(
                         thickness: 1,
                         color: Colors.grey[400],
                         indent: 16,
                         endIndent: 16,
                       ),
                       SizedBox(height: 10),
                       ListTile(
                         title: Text(
                           'Account',
                           style: TextStyle(
                             fontSize: 20,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                       ),
                       // ListTile(
                       //   onTap: () {
                       //     Navigator.pushReplacement(context,
                       //         MaterialPageRoute(builder: (context) => forgotpass()));
                       //   },
                       //   title: Text(
                       //     'Change Password',
                       //     style: TextStyle(
                       //       fontSize: 20,
                       //     ),
                       //   ),
                       //   leading: Icon(Icons.lock),
                       // ),
                       ListTile(
                         onTap: () {
                           // FirebaseAuth.instance.signOut();
                           // Navigator.push(context, MaterialPageRoute(builder: (context)=>loginpage()));
                         },
                         title: Text(
                           'Logout',
                           style: TextStyle(
                             fontSize: 20,
                             color: Colors.red,
                           ),
                         ),
                         leading: Icon(Icons.logout, color: Colors.red),
                       ),
                       ListTile(
                         onTap: () {

                           // context.read<Firebaseauth_method>().deleteAccount(context);

                         },
                         title: Text(
                           'Delete your Account',
                           style: TextStyle(
                             fontSize: 20,
                             color: Colors.red,
                           ),
                         ),
                         leading: Icon(Icons.logout, color: Colors.red),
                       ),
                     ],
                   ),
                   actions: [
                     TextButton(onPressed: (){
                       Navigator.pop(context);
                     }, child: Text('Back'))
                   ],
                 ),
               );
             });
           },
               child: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/icon/person.png'),fit: BoxFit.fitWidth),borderRadius: BorderRadius.circular(5),color: Colors.orangeAccent),height: 30,width: 30,margin: EdgeInsets.symmetric(horizontal: 5,vertical: 10),)),
           // PopupMenuButton(itemBuilder: (context){
           //   return[
           //     PopupMenuItem(child: TextButton(onPressed: () {  },child: Text('Logout'),))
           //   ];
           // })
         ]),
     body:  Container(
       child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 5,mainAxisSpacing: 5),
         children: [
           Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black),

             child: Column(
               children: [
                 Image(image: AssetImage('assets/icon/man_4140037.png'),height: 50,width: 50,),
                 Text('Home'),

               ],
             ),),
           Container(
             child: Column(
               children: [
                 Image(image: AssetImage('assets/icons/person.png')),Text('Person')
               ],
             ),
           ),
           Container(
             child: Column(
               children: [
                 Image(image: AssetImage('assets/icons/House-icon.png')),            Text('Home'),

               ],
             ),),
           Container(
             child: Column(
               children: [
                 Image(image: AssetImage('assets/icons/person.png'))            ,Text('Person')
               ],
             ),
           ),
           Container(
             child: Column(
               children: [
                 Image(image: AssetImage('assets/icons/House-icon.png')),            Text('Home'),

               ],
             ),),
           Container(
             child: Column(
               children: [
                 Image(image: AssetImage('assets/icons/person.png'))            ,Text('Person')
               ],
             ),
           ),
           Container(
             child: Column(
               children: [
                 Image(image: AssetImage('assets/icons/House-icon.png')),            Text('Home'),

               ],
             ),),
           Container(
             child: Column(
               children: [
                 Image(image: AssetImage('assets/icons/person.png'))            ,Text('Person')
               ],
             ),
           ),
           Container(
             child: Column(
               children: [
                 Image(image: AssetImage('assets/icons/House-icon.png')),            Text('Home'),

               ],
             ),),
           Container(
             child: Column(
               children: [
                 Image(image: AssetImage('assets/icons/person.png'))            ,Text('Person')
               ],
             ),
           ),
           Container(
             child: Column(
               children: [
                 Image(image: AssetImage('assets/icons/House-icon.png')),            Text('Home'),

               ],
             ),),
         ], ),
     ),
   );
  }
  grid(){
    return GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 150,mainAxisSpacing: 10,crossAxisSpacing: 10), itemBuilder: (context,index){
      return Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        color: color[index],
        child: Column(
            children:[
              SizedBox(height: 50,),
              Text('${iconname[index]}'),
              Icon(icon[index])
            ]
        ),

      );
    },itemCount: iconname.length,);
  }
}
