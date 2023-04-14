import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project_classes_secreen/splash%20screen.dart';
import 'package:project_classes_secreen/student_list-screen.dart';

Future main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
              theme: ThemeData(
                primarySwatch: Colors.deepPurple,

              ),
      home: const ClassesPage()
    );
  }
}

class ClassesPage extends StatefulWidget {
  const ClassesPage({Key? key}) : super(key: key);

  @override
  State<ClassesPage> createState() => _ClassesPageState();
}

class _ClassesPageState extends State<ClassesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Class List'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical:15,horizontal: 12),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => StudentList())));
                },
                child: Container(

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepPurple.shade300,
                  ),
                  child: ListTile(
                    leading: Icon(Icons.label,color: Colors.white,size: 30,),
                    title: Text("Prep",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:15,horizontal: 12),
              child: InkWell(
                onTap: (){},
                child: Container(

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepPurple.shade300,
                  ),
                  child: ListTile(
                    leading: Icon(Icons.label,color: Colors.white,size: 30,),
                    title: Text("Nersary",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:15,horizontal: 12),
              child: InkWell(
                onTap: (){},
                child: Container(

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepPurple.shade300,
                  ),
                  child: ListTile(
                    leading: Icon(Icons.label,color: Colors.white,size: 30,),
                    title: Text("One",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:15,horizontal: 12),
              child: InkWell(
                onTap: (){},
                child: Container(

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepPurple.shade300,
                  ),
                  child: ListTile(
                    leading: Icon(Icons.label,color: Colors.white,size: 30,),
                    title: Text("Two",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:15,horizontal: 12),
              child: InkWell(
                onTap: (){},
                child: Container(

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepPurple.shade300,
                  ),
                  child: ListTile(
                    leading: Icon(Icons.label,color: Colors.white,size: 30,),
                    title: Text("Three",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:15,horizontal: 12),
              child: InkWell(
                onTap: (){},
                child: Container(

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepPurple.shade300,
                  ),
                  child: ListTile(
                    leading: Icon(Icons.label,color: Colors.white,size: 30,),
                    title: Text("Four ",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:15,horizontal: 12),
              child: InkWell(
                onTap: (){},
                child: Container(

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepPurple.shade300,
                  ),
                  child: ListTile(
                    leading: Icon(Icons.label,color: Colors.white,size: 30,),
                    title: Text("Fifth",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:15,horizontal: 12),
              child: InkWell(
                onTap: (){},
                child: Container(

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepPurple.shade300,
                  ),
                  child: ListTile(
                    leading: Icon(Icons.label,color: Colors.white,size: 30,),
                    title: Text("Sixth",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:15,horizontal: 12),
              child: InkWell(
                onTap: (){},
                child: Container(

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepPurple.shade300,
                  ),
                  child: ListTile(
                    leading: Icon(Icons.label,color: Colors.white,size: 30,),
                    title: Text("Seventh",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:15,horizontal: 12),
              child: InkWell(
                onTap: (){},
                child: Container(

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepPurple.shade300,
                  ),
                  child: ListTile(
                    leading: Icon(Icons.label,color: Colors.white,size: 30,),
                    title: Text("Eighth",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:15,horizontal: 12),
              child: InkWell(
                onTap: (){},
                child: Container(

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepPurple.shade300,
                  ),
                  child: ListTile(
                    leading: Icon(Icons.label,color: Colors.white,size: 30,),
                    title: Text("Nineth",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:15,horizontal: 12),
              child: InkWell(
                onTap: (){},
                child: Container(

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepPurple.shade300,
                  ),
                  child: ListTile(
                    leading: Icon(Icons.label,color: Colors.white,size: 30,),
                    title: Text("Tenth",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
            ),


          ],

        ),
      ),

    );
  }
}


