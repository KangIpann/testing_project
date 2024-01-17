import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_slicing/ui/screen/login/signup.dart';
import 'package:sample_slicing/ui/screen/main/home/home.dart';

import '../../widget/template.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isPasswordVisible = true;
  bool _isFocused = false;
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: double.infinity,
                    child: Image.asset("assets/img/login/top.png", fit: BoxFit.fill,)),
                Container(
                  width: 320,
                  height: 360,
                  padding: EdgeInsets.all(20),
                  // margin: EdgeInsets.only(bottom: 100),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        offset: Offset(5.0, 5.0),
                        blurRadius: 10.0,
                      )
                    ],
                  ),
                  //Input Section
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //Img
                        Container(
                          child: Image.asset("assets/img/login/user.png", fit: BoxFit.fill,),
                          alignment: Alignment.topRight,
                          height: 50,
                          margin: EdgeInsets.fromLTRB(0, 10 , 40, 0),
                        ),
                        //Text
                        Container(
                          child: Text("Sign In",style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.bold
                          ),),
                          margin: EdgeInsets.only(right: 170,),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(height: 16),
                            TextFormField(
                              controller: _usernameController,
                              decoration: InputDecoration(
                                labelText: 'Nama Pengguna',
                                labelStyle: TextStyleTemplate.LabelText,
                                  suffixIcon: Icon(Icons.person,textDirection: TextDirection.rtl,)                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Nama Pengguna tidak boleh kosong';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 16),

                            TextFormField(
                              controller: _passwordController,
                              obscureText: _isPasswordVisible,
                              onTap: (){
                                setState(() {
                                  _isFocused = true;
                                  print(_isFocused);
                                });
                              },
                              onEditingComplete: () {
                                setState(() {
                                  _isFocused = false;
                                });
                              },
                              decoration: InputDecoration(
                                labelText: 'Password',
                                labelStyle: TextStyleTemplate.LabelText,
                                  suffixIcon:IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _isPasswordVisible = !_isPasswordVisible;
                                      });
                                    },
                                    icon: _isFocused ? (_isPasswordVisible
                                        ? Icon(Icons.visibility_off)
                                        : Icon(Icons.visibility)) : Icon(Icons.lock),
                                  )
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Password tidak boleh kosong';
                                } else if (value.length < 6) {
                                  return 'Password minimal 6 karakter';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 16),
                            
                            GestureDetector(
                              onTap: (){
                                print("Lupa Kata Sandi");
                              },
                              child: Container(
                                width: double.infinity,
                                  child: Text("Lupa Kata Sandi ?", style: TextStyle(
                                    fontFamily: "Raleway",
                                    color: CupertinoColors.systemGrey2
                                  ),),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 60),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: (){
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                              builder: (context) => SignUp(),
                              ),
                          );
                        },
                        child: Text(
                          "Sign Up ?",
                          style: TextStyle(
                              fontFamily: "Raleway",
                              fontWeight: FontWeight.normal,
                              color: Colors.blueAccent
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.transparent, width: 10),
                            borderRadius: BorderRadius.circular(400),
                          ),
                          fixedSize: Size(100, 100),
                          shadowColor: Colors.transparent.withOpacity(0.1)
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          print('Nama Pengguna: ${_usernameController.text}');
                          print('Password: ${_passwordController.text}');
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Home(),
                            ),
                          );
                        }
                      },
                      child: Container(
                        child: Image.asset('assets/img/login/go.png'),
                      ),
                    ),
                  ],
                ),
                Container(
                    margin: EdgeInsets.only(top: 80),
                    width: double.infinity,
                    child: Image.asset("assets/img/login/bottom.png", fit: BoxFit.fill,)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
