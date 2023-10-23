import 'package:abs_manager/admin/admin.dart';
import 'package:abs_manager/screens/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:abs_manager/admin/admin.dart';

enum UserType { student, teacher }

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  UserType selectedUser =
      UserType.student; // Par défaut, l'utilisateur est un étudiant

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xff212832) ,
        leading: IconButton(
          icon: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Icon(
              Icons.admin_panel_settings,
              color: Color(0xffFED36A),
              size: 40,
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return UserPage();
              }),
            );
          },
        )

      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xff212832),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Column(
                children: [
                  Text('AbsManager',
                      style: TextStyle(color: Color(0xffFED36A), fontSize: 20)),
                  SizedBox(height: 10),
                  Image.asset('assets/img.png', height: 140, width: 200),
                  SizedBox(height: 20),
                  Text('I am :',
                      style: TextStyle(color: Color(0xffFFFFFF), fontSize: 20)),
                  SizedBox(height: 20),
                  Image.asset('assets/img_1.png', height: 140, width: 200),
                  SizedBox(height: 10),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedUser = UserType.student;
                      });
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SigninPage(selectedUser: selectedUser);
                      }));
                    },
                    child: Container(
                      color: selectedUser == UserType.student
                          ? Color(0xffFED36A)
                          : Color(0xff455A64),
                      height: 40,
                      width: 200,
                      child: Center(
                        child: Text(
                          'Student',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Image.asset('assets/img_2.png', height: 140, width: 200),
                  SizedBox(height: 10),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedUser = UserType.teacher;
                      });
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SigninPage(selectedUser: selectedUser);
                      }));
                    },
                    child: Container(
                      color: selectedUser == UserType.teacher
                          ? Color(0xffFED36A)
                          : Color(0xff455A64),
                      height: 40,
                      width: 200,
                      child: Center(
                        child: Text(
                          'Teacher',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Votre classe SigninPage reste inchangée
