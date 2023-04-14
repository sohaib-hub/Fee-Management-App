

import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:project_classes_secreen/add_student.dart';
import 'package:project_classes_secreen/student_profile.dart';
class StudentList extends StatefulWidget {
  const StudentList({Key? key}) : super(key: key);

  @override
  State<StudentList> createState() => _StudentListState();
}
class _StudentListState extends State<StudentList> {
  final Prep_database=FirebaseDatabase.instance.ref('Prep Class');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      appBar: AppBar(

        centerTitle: true,
        title: const Text('Prep Class'),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: IconButton(
                onPressed: ()
                {Navigator.push(context, MaterialPageRoute(builder: ((context) =>AddStudent()))
            );},
                icon: Icon(Icons.add)),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: FirebaseAnimatedList(query: Prep_database,
              itemBuilder: ((context, snapshot, animation, index) {
                return
                    Column(
                      children: [
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 8.0),
                         child: Container(
                           height:70,
                           width: double.infinity,
                           decoration: BoxDecoration(
                             color: Colors.orange.shade100,
                             borderRadius: BorderRadius.circular(10),
                           ),
                           child: Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 10.0),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Column(
                                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                   children: [
                                     // FadeInImage.assetNetwork(
                                     //     placeholder: 'images/blog_logo.jpg',
                                     //     image:snapshot.child("student_dp").value.toString()),
                                     Text('Name: '+snapshot.child('Name').value.toString(),style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),) ,
                                     Text('Father Name:  '+snapshot.child('Father Name').value.toString(),) ,
                                     Text('Roll No:  '+snapshot.child('Id').value.toString(),) ,

                                   ],
                                 ),
                                 InkWell(
                                     child: Icon(Icons.edit,size: 25,),
                                   onTap: (){
                                       Navigator.push(context, MaterialPageRoute(builder: ((context) => StudentProfile())));
                                   },
                                 ),
                               ],
                             ),
                           ),
                         ),
                       ),
                        SizedBox(height: 10,)

                      ],
                    );


                // return    ListTile(
                //   leading: Text(snapshot.child('Name').value.toString(),) ,
                //   title:Text(snapshot.child('Father Name').value.toString(),) ,
                //   trailing: Text(snapshot.child('Id').value.toString(),) ,
                //
                // );
              })))
        ],
      ),


    );
  }
}
