import 'package:flutter/material.dart';
class StudentProfile extends StatefulWidget {
  const StudentProfile({Key? key}) : super(key: key);

  @override
  State<StudentProfile> createState() => _StudentProfileState();
}

class _StudentProfileState extends State<StudentProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurple.shade100,
        appBar: AppBar(

          centerTitle: true,
          title: const Text('Update Profile'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 27.0,),
              child: Center(
                child: CircleAvatar(
                  radius: 82,
                  backgroundColor: Colors.deepPurple,
                  child: CircleAvatar(
                    radius: 80,
                    child: Icon(Icons.person),
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
                              // child: TextFormField(
                              //   decoration: InputDecoration(
                              //       prefixIcon: Icon(Icons.person),
                              //       labelText: 'Father\'s Name',
                              //       border: OutlineInputBorder(
                              //         borderRadius: BorderRadius.circular(10),
                              //       )
                              //   ),
                              // ),
                            ),
                            SizedBox(height: 15),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),

                                  color: Colors.orange.shade100
                              ),
                              child: TextFormField(
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
                                decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.money_rounded),
                                    labelText: 'Balance Fee',
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
                                decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.house_siding),
                                    labelText: 'Submitted Fee',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                          ],
                        )),
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
