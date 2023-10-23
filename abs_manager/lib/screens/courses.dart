import 'package:abs_manager/screens/profile.dart';
import 'package:abs_manager/screens/students_list.dart';
import 'package:abs_manager/screens/warranty.dart';
import 'package:flutter/material.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xff212832),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50.0, left: 20.0),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/img_21.png',
                      height: 20,
                    ),
                    SizedBox(
                      width: 105,
                    ),
                    Text(
                      'Teacher\'s Courses ',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 100,
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
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 100.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
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
              ),
              SizedBox(
                height: 20,
              ),
                  Transform.translate(
                    offset: Offset(-130, 0),
                      child: Text(
                    "Courses",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )),

                 Padding(
                   padding: const EdgeInsets.only(left: 40.0,top: 20.0),
                   child: Column(
                     children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                    return StudentsPage();
                                  }));
                            },
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
                       SizedBox(height: 20,),
                       InkWell(
                         onTap: (){
                           Navigator.push(context,
                               MaterialPageRoute(builder: (context) {
                                 return StudentsPage();
                               }));
                         },
                         child: Row(
                           children: [
                             Container(
                               width: 50,
                               height: 50,
                               decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                // color: Colors.white,
                               ),
                               child: Image.asset('assets/img_23.png',fit: BoxFit.fill,),
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
                       SizedBox(height: 20,),
                       InkWell(
                         onTap: (){
                           Navigator.push(context,
                               MaterialPageRoute(builder: (context) {
                                 return StudentsPage();
                               }));
                         },
                         child: Row(
                           children: [
                             Container(
                               width: 50,
                               height: 50,
                               decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                 // color: Colors.white,
                               ),
                               child: Image.asset('assets/img_23.png',fit: BoxFit.fill,),
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
                       SizedBox(height: 20,),
                       InkWell(
                         onTap: (){
                           Navigator.push(context,
                               MaterialPageRoute(builder: (context) {
                                 return StudentsPage();
                               }));
                         },
                         child: Row(
                           children: [
                             Container(
                               width: 50,
                               height: 50,
                               decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                 // color: Colors.white,
                               ),
                               child: Image.asset('assets/img_23.png',fit: BoxFit.fill,),
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
                       SizedBox(height: 20,),
                       InkWell(
                         onTap: (){
                           Navigator.push(context,
                               MaterialPageRoute(builder: (context) {
                                 return StudentsPage();
                               }));
                         },
                         child: Row(
                           children: [
                             Container(
                               width: 50,
                               height: 50,
                               decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                 // color: Colors.white,
                               ),
                               child: Image.asset('assets/img_23.png',fit: BoxFit.fill,),
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

                     ],
                   ),
                 ),

            ],
          ),
        ),
      ),
    );
  }
}
