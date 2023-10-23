import 'package:abs_manager/screens/profile.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xff212832),

        child: Transform.translate(
          offset: Offset(60, 200),
          child: Column(
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return ProfilePage();
                      }));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Image.asset('assets/img_8.png'),
                      ),

                      Column(
                        children: [
                          Transform.translate(
                            offset: Offset(-14, 0),
                            child: Text('10834567',style: TextStyle(
                              color: Color(0xffFED36A),
                              fontSize: 16
                            ),
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(20, 0),
                            child: Text('Abdoulaye Bocoum',style: TextStyle(
                                color: Colors.white,
                              fontSize: 16
                            ),),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Transform.translate(
                offset: Offset(-60, 0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 120.0),
                      child: Text(
                        'Hello Abdoulaye,',
                        style: TextStyle(color: Color(0xffFFFFFFF),fontSize: 18,fontWeight: FontWeight.w400),
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
                            child: Text('Java Programming',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 100.0),
                            child: Image.asset('assets/img_9.png',height: 25,),
                          )
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
                            child: Text('Java Programming',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 100.0),
                            child: Image.asset('assets/img_10.png',height: 25,),
                          )
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
                            child: Text('Java Programming',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 100.0),
                            child: Image.asset('assets/img_9.png',height: 25,),
                          )
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
                            child: Text('Java Programming',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 100.0),
                            child: Image.asset('assets/img_10.png',height: 25,),
                          )
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
                            child: Text('Java Programming',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 100.0),
                            child: Image.asset('assets/img_9.png',height: 25,),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
