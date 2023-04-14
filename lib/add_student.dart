import 'dart:io';
import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:project_classes_secreen/button_widgets/round_button.dart';

class AddStudent extends StatefulWidget {
  const AddStudent({Key? key,}) : super(key: key);

  @override
  State<AddStudent> createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {
   File? image;
  final namecontroller=TextEditingController();
  final fnamecontroller=TextEditingController();
  final classcontroller=TextEditingController();
  final idcontroller=TextEditingController();

  bool showspinner=false;

  final prepclass=FirebaseDatabase.instance.ref('Prep Class');
  FirebaseAuth auth=FirebaseAuth.instance;
   final picker = ImagePicker();
   Future getImageGallery()async{
     final pickedFile= await picker.pickImage(source:ImageSource.gallery,);
     setState(() {
       if(
       pickedFile != null
       ){
         image= File(pickedFile.path);

       }else{
         Icon(Icons.person);
       }

     });
   }
   Future getImageCamera()async{
     final pickedFile=await picker.pickImage(source:ImageSource.camera);
     setState(() {
       if (pickedFile != null) {
         image=File(pickedFile.path);
       } else {
         Icon(Icons.person);
       }
     });
   }
   void dialog(context){
     showDialog(
         context: context,
         builder: (BuildContext context){
           return AlertDialog(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(10),
               ),
               content: Container(
                 height: 120,
                 decoration: BoxDecoration(
                   color: Colors.orange.shade100,
                 ),
                 child: Column(
                   children: [
                     InkWell(
                       onTap: (){
                         getImageCamera();
                         Navigator.pop(context);
                       },
                       child:ListTile(
                         leading: Icon(Icons.camera),
                         title: Text('Camera'),
                       ),
                     ),
                     InkWell(
                       onTap: (){
                         getImageGallery();
                         Navigator.pop(context);
                       },
                       child:ListTile(
                         leading: Icon(Icons.photo_library),
                         title: Text('Upload from gallery'),
                       ),
                     ),
                   ],
                 ),
               )

           );
         }
     );
   }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ModalProgressHUD(
        inAsyncCall: showspinner,
        child: Scaffold(
          backgroundColor: Colors.deepPurple.shade100,
          appBar: AppBar(

            centerTitle: true,
            title: const Text('Add Student Detail'),
          ),
          body:
             Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 27.0,),
                  child: Center(
                    child: CircleAvatar(
                      radius: 82,
                      backgroundColor: Colors.deepPurple,
                      child: InkWell(
                        onTap: (){
                          dialog(context);
                        },
                        child: CircleAvatar(
                          radius: 80,
                          child: Icon(Icons.person),
                        ),
                      ),

                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14.0),
                    child: Column(
                      children: [
                        Form(
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),

                                      color: Colors.orange.shade100
                                  ),
                                  child: TextFormField(
                                    controller: namecontroller,
                                    decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.person),
                                        labelText: 'Name',
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        )
                                    ),
                                  ),
                                ),
                                SizedBox(height: 15),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),

                                      color: Colors.orange.shade100
                                  ),
                                  child: TextFormField(
                                    controller: fnamecontroller,
                                    decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.person),
                                        labelText: 'Father\'s Name',
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        )
                                    ),
                                  ),
                                ),
                                SizedBox(height: 15),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),

                                      color: Colors.orange.shade100
                                  ),
                                  child: TextFormField(
                                    controller: classcontroller,
                                    decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.label),
                                        labelText: 'Class',
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        )
                                    ),
                                  ),
                                ),
                                SizedBox(height: 15),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),

                                      color: Colors.orange.shade100
                                  ),
                                  child: TextFormField(
                                    controller: idcontroller,
                                    decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.label),
                                        labelText: 'Id',
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        )
                                    ),
                                  ),
                                ),
                                SizedBox(height: 15),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 60.0),
                                  child: RoundButton(title: 'Add',
                                      onpress: () async {
                                    setState(() {
                                      showspinner=true;
                                    });
                                      try{
                                        firebase_storage.Reference dp_ref=firebase_storage.FirebaseStorage.instance.ref('BlogApp');
                                        UploadTask uplodetask=dp_ref.putFile(image!.absolute);
                                        await Future.value(uplodetask);
                                        var newurl=await dp_ref.getDownloadURL();
                                        final User? user= auth.currentUser;
                                        prepclass.child(idcontroller.text.toString()).set(

                                            {  'student_dp':newurl.toString(),
                                              'Name':namecontroller.text.toString(),
                                              'Father Name':fnamecontroller.text.toString(),
                                              'class':classcontroller.text.toString(),
                                              'Id':idcontroller.text.toString(),

                                            });
                                        setState(() {
                                          showspinner=false;
                                        });
                                        TostMessage('student added ');
                                      }
                                      catch(value){
                                            TostMessage(e.toString());
                                      }

                                    // Navigator.push(context, MaterialPageRoute(builder: ((context) => StudentList())));
                                      }),
                                )


                              ],
                            )),
                      ],
                    )
                )
              ],
            ),

        ),
      ),
    );
  }
}
void TostMessage( String message){
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0
  );

}