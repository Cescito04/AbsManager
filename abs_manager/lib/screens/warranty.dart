import 'package:abs_manager/screens/students_list.dart';
import 'package:flutter/material.dart';

class WarrantyPage extends StatefulWidget {
  const WarrantyPage({super.key});

  @override
  State<WarrantyPage> createState() => _WarrantyPageState();
}

class _WarrantyPageState extends State<WarrantyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xff212832),

        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 5.0),
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
                    width: 90,
                  ),
                  Text(
                    'Students warranty',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
SizedBox(height: 30,),
            Column(
              children: [
                Transform.translate(
                  offset: Offset(70, 0),
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
SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(right: 100.0),
                  child: Text(
                    "Missing Warranty",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                SizedBox(height: 15,),

                Container(
                  width: 280,
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,top: 10.0),
                        child: Row(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                //color: Colors.white,
                              ),
                              child: Image.asset('assets/img_23.png',fit: BoxFit.fill),
                            ),
                            SizedBox(width: 10,),
                            Text('Figma Workshop',style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),),
                            SizedBox(width: 60,),
                            Text('10h00 AM',style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 12),)
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Row(
                          children: [
                            Text('Simon Glain',style: TextStyle(fontWeight: FontWeight.w900),),
                            SizedBox( width: 20,),
                            Text('B3 Génie Logiciel',style: TextStyle(fontWeight: FontWeight.w900),),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        width: 260,
                        height: 130,
                        decoration: BoxDecoration(
                          color: Color(0xffF6F4F4),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0,top: 8.0),
                          child: Text(
                            'Poursuivi par un lion',
                            style: TextStyle(fontWeight: FontWeight.w200),
                          ),
                        ),
                      ),
SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 80,
                            height: 20,
                            color: Color(0xffFED36A),
                            child: Center(child: Text('agree',style: TextStyle(color: Colors.white),)),
                          ),
                          SizedBox(width: 15,),
                          Container(
                            width: 80,
                            height: 20,
                            color: Color(0xffB90808),
                            child: Center(child: Text('deny',style: TextStyle(color: Colors.white),)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  width: 280,
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,top: 10.0),
                        child: Row(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                //color: Colors.white,
                              ),
                              child: Image.asset('assets/img_23.png',fit: BoxFit.fill),
                            ),
                            SizedBox(width: 10,),
                            Text('Figma Workshop',style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),),
                            SizedBox(width: 60,),
                            Text('10h00 AM',style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 12),)
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Row(
                          children: [
                            Text('Simon Glain',style: TextStyle(fontWeight: FontWeight.w900),),
                            SizedBox( width: 20,),
                            Text('B3 Génie Logiciel',style: TextStyle(fontWeight: FontWeight.w900),),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        width: 260,
                        height: 130,
                        decoration: BoxDecoration(
                          color: Color(0xffF6F4F4),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0,top: 8.0),
                          child: Text(
                            'Poursuivi par un lion',
                            style: TextStyle(fontWeight: FontWeight.w200),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 80,
                            height: 20,
                            color: Color(0xffFED36A),
                            child: Center(child: Text('agree',style: TextStyle(color: Colors.white),)),
                          ),
                          SizedBox(width: 15,),
                          Container(
                            width: 80,
                            height: 20,
                            color: Color(0xffB90808),
                            child: Center(child: Text('deny',style: TextStyle(color: Colors.white),)),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )


          ],
        ),
      ),
    );
  }
}
