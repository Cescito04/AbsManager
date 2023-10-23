import 'package:abs_manager/screens/courses.dart';
import 'package:flutter/material.dart';
import 'package:abs_manager/screens/home_screen.dart';
import 'package:abs_manager/screens/sign_up.dart';
import '../models/localDb.dart';
import 'choice.dart';

class SigninPage extends StatefulWidget {
  final UserType selectedUser;

  SigninPage({required this.selectedUser});

  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final _formfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;
  RegExp emailValid = RegExp(
    r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=/^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?",
  );

  bool _isFormValid = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff212832),
        leading:  IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xff212832),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 20.0),
          child: Transform.translate(
            offset: Offset(0, 100),
            child: Form(
              key: _formfield,
              child: Column(
                children: [
                  Transform.translate(
                    offset: Offset(-80, 0),
                    child: Text(
                      'Welcome Back',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  SizedBox(height: 15),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 200.0),
                        child: Text(
                          'Email address',
                          style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xff8CAAB9)),
                        ),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(left: 3.0),
                        child: Container(
                          height: 35,
                          decoration: BoxDecoration(
                            color: Color(0xff455A64),
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          child: TextFormField(
                            controller: emailController,
                            decoration: InputDecoration(
                              hintText: "bocoum@gmail.com",
                              hintStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w100, fontSize: 13),
                              alignLabelWithHint: true,
                              border: InputBorder.none,
                              prefixIcon: Padding(
                                padding: const EdgeInsets.only(top: 6.0),
                                child: Icon(
                                  Icons.email_outlined,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Entrez votre Email";
                              }
                              if (!emailValid.hasMatch(value)) {
                                return "Entrez un Email valide";
                              }
                              return null;
                            },
                            onChanged: (_) {
                              _updateFormValidation();
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(right: 230.0),
                        child: Text(
                          'Password',
                          style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xff8CAAB9)),
                        ),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(left: 0.0),
                        child: Container(
                          height: 35,
                          decoration: BoxDecoration(
                            color: Color(0xff455A64),
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          child: TextFormField(
                            controller: passController,
                            obscureText: passToggle,
                            decoration: InputDecoration(
                              hintText: "Password",
                              hintStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w100, fontSize: 13),
                              alignLabelWithHint: true,
                              border: InputBorder.none,
                              prefixIcon: Padding(
                                padding: const EdgeInsets.only(top: 6.0),
                                child: Icon(
                                  Icons.lock_open,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                              suffixIcon: InkWell(
                                onTap: () {
                                  setState(() {
                                    passToggle = !passToggle;
                                  });
                                },
                                child: passToggle
                                    ? Icon(
                                  Icons.visibility,
                                  size: 20,
                                  color: Colors.white,
                                )
                                    : Icon(
                                  Icons.visibility_off,
                                  size: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Enter the password";
                              } else if (passController.text.length < 8) {
                                return "Password must not be less than 8 characters";
                              }
                              return null;
                            },
                            onChanged: (_) {
                              _updateFormValidation();
                            },
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(90, 10),
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xff8CAAB9)),
                        ),
                      ),
                      // ...

                      InkWell(
                        onTap: () async {
                          if (_isFormValid) {
                            if (widget.selectedUser == UserType.student) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return HomeScreen();
                                  },
                                ),
                              );
                            } else if (widget.selectedUser == UserType.teacher) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return CoursePage();
                                  },
                                ),
                              );
                            }
                          } else {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  backgroundColor: Color(0xff495A72),
                                  title: Text("Connection Required", style: TextStyle(color: Color(0xffFED36A))),
                                  content: Text("Please log in before accessing this page.", style: TextStyle(color: Color(0xffFED36A))),
                                  actions: [
                                    TextButton(
                                      style: TextButton.styleFrom(
                                        primary: Color(0xffFED36A),
                                      ),
                                      child: Text("OK"),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                          await localDatabase().addDataLocally(email: emailController.text,password: passController.text);
                          await localDatabase().readAllData();
                          setState(() {

                          });

                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 35.0),
                          child: Container(
                            height: 35,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Color(0xffFED36A),
                            ),
                            child: Center(
                              child: Text(
                                'Log In',
                                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                      ),

// ...

                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Transform.translate(
                              offset: Offset(0, -5),
                              child: Text(
                                "___________",
                                style: TextStyle(color: Color(0xff455A64)),
                              )),
                          Transform.translate(
                            offset: Offset(22, 0),
                            child: Text(
                              "Or continue with",
                              style: TextStyle(color: Color(0xff455A64)),
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(40, -5),
                            child: Text(
                              "___________",
                              style: TextStyle(color: Color(0xff455A64)),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 300,
                        height: 35,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/img_4.png',
                              color: Colors.white,
                              height: 14,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Google',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don\'t have an account?',
                            style: TextStyle(color: Color(0xff8CAAB9), fontSize: 12),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return SignUpPage();
                                }),
                              );
                            },
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                  color: Color(0xffFED36A),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

               /*   Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      controller: ScrollController(),
                      itemCount: wholeDtatList.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          height: 40,
                          width: double.infinity,
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Text(wholeDtatList[index]['email'])],
                          ),
                        );
                      },
                    ),
                  ),*/
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _updateFormValidation() {
    setState(() {
      _isFormValid = _formfield.currentState?.validate() ?? false;
    });
  }
}
