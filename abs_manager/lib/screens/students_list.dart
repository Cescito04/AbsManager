import 'package:abs_manager/screens/courses.dart';
import 'package:abs_manager/screens/warranty.dart';
import 'package:flutter/material.dart';

class StudentsPage extends StatefulWidget {
  const StudentsPage({super.key});

  @override
  State<StudentsPage> createState() => _StudentsPageState();
}

class _StudentsPageState extends State<StudentsPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xff212832),
        child: Padding(
          padding: const EdgeInsets.only(top: 0.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50.0, left: 20.0),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return CoursePage();
                              }));
                        },
                        child: Image.asset(
                          'assets/img_21.png',
                          height: 20,
                        ),
                      ),
                      SizedBox(
                        width: 115,
                      ),
                      Text(
                        'Students List',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 140,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return WarrantyPage();
                              }));
                        },
                        child: Image.asset(
                          'assets/img_22.png',
                          height: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Transform.translate(
                  offset: Offset(-10, 0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Container(
                            width: 300,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color(0xff455A64),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search),
                                hintText: 'search',
                                fillColor:  Color(0xff455A64),
                                filled: true,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Image.asset('assets/img_24.png',height: 40,)
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 30.0),
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
                                offset: Offset(10, 0),
                                child: Text(
                                  '10834567',
                                  style: TextStyle(
                                      color: Color(0xffFED36A), fontSize: 16),
                                ),
                              ),
                              Transform.translate(
                                offset: Offset(20, 0),
                                child: Text(
                                  'Docteur Fall',
                                  style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),

                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0,top: 20.0),
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          //color: Colors.white,
                        ),
                        child: Image.asset('assets/img_23.png',fit: BoxFit.fill),
                      ),
                      SizedBox(width: 20,),
                      Text('Figma Workshop',style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),),
                      SizedBox(width: 80,),
                      Text('10h00 AM',style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),)
                    ],
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(left: 40.0,top: 20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle
                            ),
                            child: Image.asset('assets/img_25.png'),
                          ),
                          SizedBox(width: 20,),
                          Text('Simon Glain',style: TextStyle(color: Colors.white),),
                          SizedBox(width: 40,),
                          Row(
                            children: [
                              Container(
                                width: 80,
                                height: 20,
                                color: Color(0xffFED36A),
                                child: Center(child: Text('here',style: TextStyle(color: Colors.white),)),
                              ),
                              SizedBox(width: 15,),
                              Container(
                                width: 80,
                                height: 20,
                                color: Color(0xffB90808),
                                child: Center(child: Text('missing',style: TextStyle(color: Colors.white),)),
                              ),
                            ],
                          )

                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle
                            ),
                            child: Image.asset('assets/img_25.png'),
                          ),
                          SizedBox(width: 20,),
                          Text('Simon Glain',style: TextStyle(color: Colors.white),),
                          SizedBox(width: 40,),
                          Row(
                            children: [
                              Container(
                                width: 80,
                                height: 20,
                                color: Color(0xffFED36A),
                                child: Center(child: Text('here',style: TextStyle(color: Colors.white),)),
                              ),
                              SizedBox(width: 15,),
                              Container(
                                width: 80,
                                height: 20,
                                color: Color(0xffB90808),
                                child: Center(child: Text('missing',style: TextStyle(color: Colors.white),)),
                              ),
                            ],
                          )

                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle
                            ),
                            child: Image.asset('assets/img_25.png'),
                          ),
                          SizedBox(width: 20,),
                          Text('Simon Glain',style: TextStyle(color: Colors.white),),
                          SizedBox(width: 40,),
                          Row(
                            children: [
                              Container(
                                width: 80,
                                height: 20,
                                color: Color(0xffFED36A),
                                child: Center(child: Text('here',style: TextStyle(color: Colors.white),)),
                              ),
                              SizedBox(width: 15,),
                              Container(
                                width: 80,
                                height: 20,
                                color: Color(0xffB90808),
                                child: Center(child: Text('missing',style: TextStyle(color: Colors.white),)),
                              ),
                            ],
                          )

                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle
                            ),
                            child: Image.asset('assets/img_25.png'),
                          ),
                          SizedBox(width: 20,),
                          Text('Simon Glain',style: TextStyle(color: Colors.white),),
                          SizedBox(width: 40,),
                          Row(
                            children: [
                              Container(
                                width: 80,
                                height: 20,
                                color: Color(0xffFED36A),
                                child: Center(child: Text('here',style: TextStyle(color: Colors.white),)),
                              ),
                              SizedBox(width: 15,),
                              Container(
                                width: 80,
                                height: 20,
                                color: Color(0xffB90808),
                                child: Center(child: Text('missing',style: TextStyle(color: Colors.white),)),
                              ),
                            ],
                          )

                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle
                            ),
                            child: Image.asset('assets/img_25.png'),
                          ),
                          SizedBox(width: 20,),
                          Text('Simon Glain',style: TextStyle(color: Colors.white),),
                          SizedBox(width: 40,),
                          Row(
                            children: [
                              Container(
                                width: 80,
                                height: 20,
                                color: Color(0xffFED36A),
                                child: Center(child: Text('here',style: TextStyle(color: Colors.white),)),
                              ),
                              SizedBox(width: 15,),
                              Container(
                                width: 80,
                                height: 20,
                                color: Color(0xffB90808),
                                child: Center(child: Text('missing',style: TextStyle(color: Colors.white),)),
                              ),
                            ],
                          )

                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle
                            ),
                            child: Image.asset('assets/img_25.png'),
                          ),
                          SizedBox(width: 20,),
                          Text('Simon Glain',style: TextStyle(color: Colors.white),),
                          SizedBox(width: 40,),
                          Row(
                            children: [
                              Container(
                                width: 80,
                                height: 20,
                                color: Color(0xffFED36A),
                                child: Center(child: Text('here',style: TextStyle(color: Colors.white),)),
                              ),
                              SizedBox(width: 15,),
                              Container(
                                width: 80,
                                height: 20,
                                color: Color(0xffB90808),
                                child: Center(child: Text('missing',style: TextStyle(color: Colors.white),)),
                              ),
                            ],
                          )

                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle
                            ),
                            child: Image.asset('assets/img_25.png'),
                          ),
                          SizedBox(width: 20,),
                          Text('Simon Glain',style: TextStyle(color: Colors.white),),
                          SizedBox(width: 40,),
                          Row(
                            children: [
                              Container(
                                width: 80,
                                height: 20,
                                color: Color(0xffFED36A),
                                child: Center(child: Text('here',style: TextStyle(color: Colors.white),)),
                              ),
                              SizedBox(width: 15,),
                              Container(
                                width: 80,
                                height: 20,
                                color: Color(0xffB90808),
                                child: Center(child: Text('missing',style: TextStyle(color: Colors.white),)),
                              ),
                            ],
                          )

                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle
                            ),
                            child: Image.asset('assets/img_25.png'),
                          ),
                          SizedBox(width: 20,),
                          Text('Simon Glain',style: TextStyle(color: Colors.white),),
                          SizedBox(width: 40,),
                          Row(
                            children: [
                              Container(
                                width: 80,
                                height: 20,
                                color: Color(0xffFED36A),
                                child: Center(child: Text('here',style: TextStyle(color: Colors.white),)),
                              ),
                              SizedBox(width: 15,),
                              Container(
                                width: 80,
                                height: 20,
                                color: Color(0xffB90808),
                                child: Center(child: Text('missing',style: TextStyle(color: Colors.white),)),
                              ),
                            ],
                          )

                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle
                            ),
                            child: Image.asset('assets/img_25.png'),
                          ),
                          SizedBox(width: 20,),
                          Text('Simon Glain',style: TextStyle(color: Colors.white),),
                          SizedBox(width: 40,),
                          Row(
                            children: [
                              Container(
                                width: 80,
                                height: 20,
                                color: Color(0xffFED36A),
                                child: Center(child: Text('here',style: TextStyle(color: Colors.white),)),
                              ),
                              SizedBox(width: 15,),
                              Container(
                                width: 80,
                                height: 20,
                                color: Color(0xffB90808),
                                child: Center(child: Text('missing',style: TextStyle(color: Colors.white),)),
                              ),
                            ],
                          )

                        ],
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
