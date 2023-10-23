import 'package:abs_manager/screens/choice.dart';
import 'package:abs_manager/screens/home_screen.dart';
import 'package:flutter/material.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Color(0xff212832),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.translate(
              offset: Offset(10, -130),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                  SizedBox(
                    width: 105,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Text(
                      'Profile ',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(color: Color(0xffFED36A)),
              ),
              child: Image.asset('assets/img_11.png',),

            ),
            SizedBox(height: 25,),
            Column(
              children: [

                Container(
                  height: 35,
                  width: 260,
                  decoration: BoxDecoration(
                    color: Color(0xff455A64),
                    // color: Colors.white
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Image.asset('assets/img_6.png',color: Color(0xff8CAAB9),),
                      ),
                      SizedBox(width: 20,),
                      Text('Abdoulaye Bocoum',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
                      SizedBox(width: 60,),
                      Image.asset('assets/img_13.png',color: Color(0xff8CAAB9),height: 20,),

                    ],
                  ),
                ),
                SizedBox(height: 25,),
                Container(
                  height: 35,
                  width: 260,
                  decoration: BoxDecoration(
                    color: Color(0xff455A64),
                    // color: Colors.white
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Image.asset('assets/img_14.png',height:20,color: Color(0xff8CAAB9),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Text('bocoum@gmail.com',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
                      SizedBox(width: 48,),
                      Image.asset('assets/img_13.png',color: Color(0xff8CAAB9),height: 20,),

                    ],
                  ),
                ),
                SizedBox(height: 25,),
                Container(
                  height: 35,
                  width: 260,
                  decoration: BoxDecoration(
                    color: Color(0xff455A64),
                    // color: Colors.white
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Image.asset('assets/img_15.png',height:20,color: Color(0xff8CAAB9),),
                      ),
                      SizedBox(width: 20,),
                      Text('Password',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
                      SizedBox(width: 120,),
                      Image.asset('assets/img_13.png',color: Color(0xff8CAAB9),height: 20,),
                    ],
                  ),
                ),
                SizedBox(height: 25,),
                Container(
                  height: 35,
                  width: 260,
                  decoration: BoxDecoration(
                    color: Color(0xff455A64),
                    // color: Colors.white
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Image.asset('assets/img_17.png',height:20,color: Color(0xff8CAAB9),),
                      ),
                      SizedBox(width: 20,),
                      Text('My missings',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
                      SizedBox(width: 105,),
                      Image.asset('assets/img_16.png',color: Color(0xff8CAAB9),height: 20,),
                    ],
                  ),
                ),
                SizedBox(height: 25,),
                Container(
                  height: 35,
                  width: 260,
                  decoration: BoxDecoration(
                    color: Color(0xff455A64),
                    // color: Colors.white
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Image.asset('assets/img_18.png',height:20,color: Color(0xff8CAAB9),),
                      ),
                      SizedBox(width: 20,),
                      Text('Privacy',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
                      SizedBox(width: 139,),
                      Image.asset('assets/img_16.png',color: Color(0xff8CAAB9),height: 20,),
                    ],
                  ),
                ),
                SizedBox(height: 25,),
                Container(
                  height: 35,
                  width: 260,
                  decoration: BoxDecoration(
                    color: Color(0xff455A64),
                    // color: Colors.white
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Image.asset('assets/img_19.png',height:20,color: Color(0xff8CAAB9),),
                      ),
                      SizedBox(width: 20,),
                      Text('Settings',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
                      SizedBox(width: 132,),
                      Image.asset('assets/img_16.png',color: Color(0xff8CAAB9),height: 20,),
                    ],
                  ),
                ),
                SizedBox(height: 25,),
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Color(0xffFED36A),
                          title: Text('Logout'),
                          content: Text('Are you sure you want to log out ?',style: TextStyle(color: Color(0xff212832)),),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Cancel',style: TextStyle(color: Color(0xff212832)),),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                                Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return HomePage();
                                }));
                              },
                              child: Text('Confirm',style: TextStyle(color: Color(0xff212832)),),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Container(
                    height: 35,
                    width: 260,
                    decoration: BoxDecoration(
                      color: Color(0xffFED36A),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/img_20.png', height: 20, color: Color(0xff212832)),
                        SizedBox(width: 10),
                        Text('Logout', style: TextStyle(color: Color(0xff212832), fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                ),

              ],
            ),

          ],
        ),
      )
    );
  }
}
