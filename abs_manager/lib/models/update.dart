import 'package:abs_manager/models/localDb.dart';
import 'package:flutter/material.dart';

class UpdateUserPage extends StatefulWidget {
  UpdateUserPage({super.key,this.id});
  final id;

  @override
  State<UpdateUserPage> createState() => _UpdateUserPageState();
}

class _UpdateUserPageState extends State<UpdateUserPage> {
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
          body:  Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Color(0xff212832),
            child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Transform.translate(
                        offset: Offset(-40, -20),
                        child: Text(
                          'Welcome Back for update !',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                      Container(
                        height: 35,
                        width: 300,
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
                      SizedBox(height: 40,),

                      InkWell(
                        onTap: () async{
                       await localDatabase().updateData(email: emailController.text,id: widget.id );
                       await localDatabase().readAllData();
                       Navigator.pop(context);

                        },
                        child: Container(
                          height: 35,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Color(0xffFED36A),
                          ),
                          child: Center(
                              child: Text(
                                'Update ',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w600),
                              )
                          ),
                        ),
                      ),
                    ],
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
