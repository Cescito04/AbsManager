import 'package:abs_manager/models/localDb.dart';
import 'package:abs_manager/models/update.dart';
import 'package:flutter/material.dart';
import 'package:abs_manager/models/localDb.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {

          });
        },
        child: Icon(Icons.refresh),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xff212832),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 20.0),
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
                  Text(
                    'All Users',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 140,
                  ),
                ],
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

            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                controller: ScrollController(),
                itemCount: wholeDtatList.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    height: 60,
                    width: double.infinity,
                    color: Color(0xffFED36A),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(wholeDtatList[index]['email'],
                          style: TextStyle(fontWeight: FontWeight.w800,fontSize: 16,color: Color(0xff212832)),
                        ),
                      ),
                        IconButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return UpdateUserPage(id:wholeDtatList[index]['id'] );
                                }),
                              );
                            },
                            icon: Icon(Icons.edit)
                        ),

                        IconButton(
                            onPressed: () async{
                            await localDatabase().deleteData(email:wholeDtatList[index]['email'] );
                            await localDatabase().readAllData();
                            setState(() {

                            });
                            },
                            icon: Icon(Icons.delete, color: Colors.red,)
                        )
                      ],
                    ),
                  );
                },
              ),
            ),



          ],
        ),
      ),
    );
  }
}
