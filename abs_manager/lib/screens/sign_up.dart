import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
            offset: Offset(0, 150),
            child: Form(
              child: Column(
                children: [
                  Transform.translate(
                      offset: Offset(-55, 0),
                      child: Text(
                        'Create your account',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold,fontSize: 18),
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 220.0),
                        child: Text(
                          'Full Name',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff8CAAB9)),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 3.0),
                        child: Container(
                          height: 35,
                          decoration: BoxDecoration(
                            color: Color(0xff455A64),
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Abdoulaye",
                              // Utilisez hintText au lieu de labelText
                              hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w100,
                                  fontSize: 13 // Couleur du texte d'indication
                                  ),
                              alignLabelWithHint: true,
                              // Centrer le hintText
                              border: InputBorder.none,
                              prefixIcon: Padding(
                                  padding: const EdgeInsets.only(top: 6.0),
                                  child: Image.asset(
                                    'assets/img_6.png',
                                    color: Colors.white,
                                  )),
                            ),
                            style: TextStyle(
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 200.0),
                        child: Text(
                          'Email address',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff8CAAB9)),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 3.0),
                        child: Container(
                          height: 35,
                          decoration: BoxDecoration(
                            color: Color(0xff455A64),
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "bocoum@gmail.com",
                              // Utilisez hintText au lieu de labelText
                              hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w100,
                                  fontSize: 13 // Couleur du texte d'indication
                                  ),
                              alignLabelWithHint: true,
                              // Centrer le hintText
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
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 230.0),
                        child: Text(
                          'Password',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff8CAAB9)),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0.0),
                        child: Container(
                          height: 35,
                          decoration: BoxDecoration(
                            color: Color(0xff455A64),
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: "Password",
                                // Utilisez hintText au lieu de labelText
                                hintStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w100,
                                    fontSize:
                                        13 // Couleur du texte d'indication
                                    ),
                                alignLabelWithHint: true,
                                // Centrer le hintText
                                border: InputBorder.none,
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.only(top: 6.0),
                                  child: Icon(
                                    Icons.lock_open,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                                suffixIcon: Icon(
                                  Icons.visibility,
                                  size: 20,
                                  color: Colors.white,
                                )),
                            style: TextStyle(
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/img_7.png',
                                height: 15,
                              ),
                              Text('I have read & agreed to AbsManager ',
                                  style: TextStyle(
                                      color: Color(0xff8CAAB9), fontSize: 10)),
                              Text(
                                'Privacy Policy,',
                                style: TextStyle(
                                    color: Color(0xffFED36A), fontSize: 10),
                              )
                            ],
                          ),
                          Transform.translate(
                            offset: Offset(-85, 0),
                              child: Text(
                            'Terms & Contions,',
                            style: TextStyle(
                                color: Color(0xffFED36A), fontSize: 10),
                          ))
                        ],
                      ),
                      Padding(
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
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          )
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account?',
                            style: TextStyle(
                                color: Color(0xff8CAAB9), fontSize: 12),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                      return SignUpPage();
                                    }));
                              },
                              child: Text(
                                'Log In',
                                style: TextStyle(
                                    color: Color(0xffFED36A),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              ))
                        ],
                      ),
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

                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
